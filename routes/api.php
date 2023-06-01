<?php

use App\Http\Controllers\Visitor\categoryController;
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



Route::controller(visitorController::class)->group(function(){
    Route::get('/get-visitor','GetVisitorDetails');
    Route::post('/contact','ContactDetails');
    Route::get('/company-info','CompanyInfo');
});

Route::controller(categoryController::class)->group(function(){
    Route::get('/get-category','Categories');
    Route::get('/get-sub-category','subCategories');
});