<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class productController extends Controller
{
    public function allProducts(Request $data){
        $products = Product::where('product_remark',$data->remark)->get();
        return $products;
    }
    public function allProductsByCategory(Request $data){
        $products = Product::where('product_category_id',$data->category)->get();
        return $products;
    }
    public function allProductsBySubCategory(Request $data){
        $products = Product::where('product_sub_category_id',$data->subcategory)->get();
        return $products;
    }
}
