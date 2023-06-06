<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class productController extends Controller
{
    public function allProducts(Request $data){
        $products = Product::where('product_remark',$data->remark)->get();
        return $products;
    }
    public function allProductsByCategory(Request $data){
        $category = Category::where('category_id',$data->category)->first();
        $products = Product::where('product_category_id',$data->category)->get();
        return [
            'category' => $category,
            'products' => $products,

        ];
    }
    public function allProductsBySubCategory(Request $data){
        $subcategory = Subcategory::where('id',$data->subcategory)->first();
        $products = Product::where('product_sub_category_id',$data->subcategory)->get();
        return [
            'subcategory' => $subcategory,
            'products' => $products,

        ];
    }
}
