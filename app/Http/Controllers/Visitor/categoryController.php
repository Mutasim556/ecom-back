<?php

namespace App\Http\Controllers\Visitor;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class categoryController extends Controller
{
    public function Categories(){
        $categories = Category::all();
        return $categories;
    }

    public function subCategories(){
        

        $categories = Category::all();
        $allCategory = [];
        foreach($categories as $category){
            $sub_categories = Subcategory::where('category_id',$category->category_id)->get();
            $item = [
                'category_id' => $category->category_id,
                'category_name' => $category->category_name,
                'category_image' => $category->category_image,
                'subcategory' => $sub_categories,
            ];
            array_push($allCategory,$item);
        }


        return [
            'allCategories' => $allCategory
        ];
    }
}
