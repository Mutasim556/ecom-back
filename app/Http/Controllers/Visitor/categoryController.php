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
        $sub_categories = Subcategory::all();
        $subCategories = [];
        foreach($sub_categories as $scat){
            $cat = Category::where('category_id',$scat->category_id)->first();
            $item = [
                'category_id' => $cat->category_id,
                'category_name' => $cat->category_name,
                'category_image' => $cat->category_image,
                'subcategory' => $scat,
            ];
            array_push($subCategories,$item);
        }

        return $subCategories;
    }
}
