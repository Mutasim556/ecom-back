<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('product_id');
            $table->integer('product_category_id');
            $table->integer('product_sub_category_id');
            $table->string('product_name');
            $table->string('product_image');
            $table->integer('product_price');
            $table->integer('product_discount')->nullable();
            $table->integer('product_discount_price')->nullable();
            $table->string('product_brand')->nullable();
            $table->string('product_remark')->nullable();
            $table->string('product_code')->nullable();
            $table->integer('product_quantity')->nullable();
            $table->string('product_quantity_type')->nullable();
            $table->string('product_status')->default('Active');
            $table->integer('product_delete')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
