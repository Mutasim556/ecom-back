<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Review;
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

    public function ProductDetails(){
        $product = Product::where('product_id',request()->id)->first();
        $products = Product::where('product_sub_category_id',$product->product_sub_category_id)->limit(8)->get();
        $reviews = Review::join('users','reviews.reviewer_id','users.id')->where('review_product_id',request()->id)->select('reviews.*','users.name')->get();
        return [
            'product' => $product,
            'related' => $products,
            'reviews' => $reviews,
        ];
    }
}
