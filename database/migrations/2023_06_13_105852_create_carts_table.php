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
        Schema::create('carts', function (Blueprint $table) {
            $table->id('cart_id');
            $table->integer('cart_user_id');
            $table->integer('cart_product_id');
            $table->integer('cart_product_category_id');
            $table->integer('cart_product_sub_category_id');
            $table->string('cart_product_color')->nullable();
            $table->string('cart_product_size')->nullable();
            $table->integer('cart_product_quantity');
            $table->text('cart_status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('carts');
    }
};
