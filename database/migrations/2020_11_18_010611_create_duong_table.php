<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDuongTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('duong', function (Blueprint $table) {
            $table->id();
            $table->string('xaid',5)->collation('utf8_general_ci');
            $table->foreign('xaid')->references('xaid')->on('xaphuongthitran');
            $table->string('tenduong')->collation('utf8_general_ci');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('duong');
    }
}