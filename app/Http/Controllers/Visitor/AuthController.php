<?php

namespace App\Http\Controllers\Visitor;

use Illuminate\Auth\Events\Registered;
use App\Http\Controllers\Controller;
use App\Http\Requests\RegisterRequest;
use App\Mail\ForgetPasswordMail;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Password;
use Exception;

class AuthController extends Controller
{
    public function Login(Request $data){

        // $check = DB::table('personal_access_tokens')
        $credentials = $data->only('email','password');
        if(!Auth::attempt($credentials)){
            throw new AuthenticationException(message:'Invalid user information');
        }else{
            $token = auth()->user()->createToken('access-token')->plainTextToken;
            $check = DB::table('personal_access_tokens')->where('tokenable_id',auth()->user()->id)->update([
                'mac' => exec('getmac'), 
            ]);
            return[
                'message' => 'Successfully login',
                'user' => auth()->user(),
                'token' => $token,
                'mac' => exec('getmac'),
            ];
            
        }

        
    } // end 


    public function Register(RegisterRequest $data){
        $user = User::create([
            'name' => $data->name,
            'email' => $data->email,
            'password' => Hash::make($data->password),
        ]);

        event(new Registered($user));
        

        return $user;
    }   
    public function ForgetPassword(Request $data){
        $data->validate([
            'email' => 'required|email|exists:users,email|max:255'
        ]);

        $token = rand(100000,999999);
        $check = DB::table('password_reset_tokens')->where('email', $data->email)->first();
        if($check){
            DB::table('password_reset_tokens')->where('email', $data->email)->update([
                'token' =>  Hash::make($token),
                'created_at' => Carbon::now(),
                'token_time' => time(),
            ]);
        }else{
            DB::table('password_reset_tokens')->insert([
                'email' => $data->email,
                'token' => Hash::make($token),
                'created_at' => Carbon::now(),
                'token_time' => time(),
            ]);
        }
        $mail = Mail::to($data->email)->send(new ForgetPasswordMail($token));

        if($mail){
            return [
                'message' => 'Mail send successfully to your email '.$data->email,
            ];
        }else{
            return response([
                'message' => 'Something went wrong',
            ],500);
        }
    }

    public function ForgetPasswordData(Request $data){
        $fd = DB::table('password_reset_tokens')->where('email',$data->email)->first();
        if($fd){
            return[
                'fd' => $fd->token_time,
            ];
        }else{
            return[
                'fd' => 1,
            ];
        }   
        
    }

    public function ResetPassword(Request $data){
        $data->validate([
            'email' => 'required|max:255|email|exists:password_reset_tokens,email',
            'password' => 'required|max:255',
            'password_again' => 'required|same:password',
            'token' => 'required',
        ]);


        $status = Password::reset($data->only('email','token','password'),function($user) use($data){
            $user->update([
                'password' => Hash::make($data->password),
            ]);
        });

        if($status == Password::PASSWORD_RESET){
            return [
                'message' => 'Password Changed Successfully'
            ];
        }else{
            return response()->json([
                'message' => 'Invalid Token'
            ],403);
        }
    }

    public function GetUserInfo(){

        $user = auth()->user();
        return $user;
    }

    public function Logout(){
        auth()->user()->currentAccessToken()->delete();
        return ['message'=>'Successfully loged out'];
    }
}
