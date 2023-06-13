<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class productCartController extends Controller
{
    public function AddCart(Request $data){
        $check = Cart::where('cart_user_id',auth()->user()->id)->where('cart_product_id',$data->product_id)->where('cart_product_color',$data->product_color)->where('cart_product_size',$data->product_size)->where('cart_product_size',$data->product_size)->select('cart_id','cart_product_quantity')->first();
        if($check){
            $cart = Cart::where('cart_id',$check->cart_id)->update([
                'cart_product_quantity' => $check->cart_product_quantity+$data->product_quantity,
            ]);
        }else{
            $cart = Cart::create([
                'cart_user_id' => auth()->user()->id,
                'cart_product_category_id' => $data->category_id,
                'cart_product_sub_category_id' => $data->sub_category_id,
                'cart_product_id' => $data->product_id,
                'cart_product_color' => $data->product_color,
                'cart_product_size' => $data->product_size,
                'cart_product_quantity' => $data->product_quantity,
            ]);
        }
        
        $cart = Cart::where('cart_user_id',auth()->user()->id)->count();
        return [
            'cart' =>$cart,
            'count' => $cart,
        ];
    }
    public function CountCart(){
        $cart = Cart::where('cart_user_id',auth()->user()->id)->count();

        return [
            'count' => $cart,
        ];
    }
}
