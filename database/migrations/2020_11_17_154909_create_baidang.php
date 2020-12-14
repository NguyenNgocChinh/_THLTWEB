<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBaidang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('baidang', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('tieude')->collation('utf8_general_ci');
            $table->longText('noidung')->collation('utf8_general_ci');
            $table->unsignedBigInteger('loai_id');
            $table->foreign('loai_id')->references('id')->on('loai');
            $table->double('gia');
            $table->string('huong')->collation('utf8_general_ci');/**/
            $table->boolean('trangthai')->default(1);
            $table->boolean('isChoThue');/**/
            $table->integer('sophongngu')->nullable()->default(0);
            $table->integer('sophongtam')->nullable()->default(0);
            $table->integer('namxaydung')->nullable();
            $table->text('diachi')->collation('utf8_general_ci');
            $table->float('toadoX');
            $table->float('toadoY');
            $table->longText('hinhanh')->nullable();
            $table->date('ngayhethan')->nullable();
            $table->boolean('choduyet');
            $table->double('dientich');
            $table->unsignedBigInteger('id_goi');
            $table->foreign('id_goi')->references('id')->on('goi');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('baidang');
    }
}