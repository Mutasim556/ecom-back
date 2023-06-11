<?php

use App\Http\Controllers\Visitor\AuthController;
use App\Http\Controllers\Visitor\categoryController;
use App\Http\Controllers\Visitor\productController;
use App\Http\Controllers\Visitor\visitorController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


//auth
Route::controller(AuthController::class)->group(function(){
    Route::post('/user-login','Login');
    Route::post('/register','Register');
    Route::post('/forgot-password','ForgetPassword');
    Route::post('/reset-password','ResetPassword');
    Route::get('/get-user-info','GetUserInfo')->middleware('auth:sanctum');
    Route::get('/logout','Logout')->middleware('auth:sanctum');
});



Route::controller(visitorController::class)->group(function(){
    Route::get('/get-visitor','GetVisitorDetails');
    Route::post('/contact','ContactDetails');
    Route::get('/company-info','CompanyInfo');
});

Route::controller(categoryController::class)->group(function(){
    Route::get('/get-category','Categories');
    Route::get('/get-sub-category','subCategories');
});

//products
Route::controller(productController::class)->group(function(){
    Route::get('/all-products/{remark}','allProducts');
    Route::get('/all-category-products/{category}','allProductsByCategory');
    Route::get('/all-sub-category-products/{subcategory}','allProductsBySubCategory');
});

