<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use App\Models\Visitor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class visitorController extends Controller
{
    public function GetVisitorDetails(){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        date_default_timezone_set('Asia/Dhaka');
        $date = date('Y-m-d');
        $time = date('h:i:s a');
        $check = DB::table('visitors')->where('visitor_ip',$ip_address)->first();
        if($check){
            $result = Visitor::where('visitor_ip',$ip_address)->update([
                'visit_time' => $date,
                'visit_date' => $time
            ]);
        }else{
            $result = Visitor::create([
                'visitor_ip' => $ip_address,
                'visit_time' => $date,
                'visit_date' => $time
            ]);
        }
        $check = DB::table('visitors')->where('visitor_ip',$ip_address)->first();
        return[
            'user_info' => $check,
            'message' => 'Here is user ip',
        ];
    }
}
