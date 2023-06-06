<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function Login(Request $request){

        try{

            if (Auth::attempt($request->only('email','password'))) {
                $user = Auth::user();
                $token = auth()->user()->createToken('access-token')->plainTextToken;

                return response([
                    'message' => "Successfully Login",
                    'token' => $token,
                    'user' => $user
                ],200); // States Code
            }

        }catch(Exception $exception){
            return response([
                'message' => $exception->getMessage()
            ],400);
        }
        return response([
            'message' => 'Invalid Email Or Password' 
        ],401);

    } // end 
}
