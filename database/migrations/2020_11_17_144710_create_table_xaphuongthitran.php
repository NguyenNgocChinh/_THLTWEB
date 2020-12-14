<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableXaphuongthitran extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('xaphuongthitran', function (Blueprint $table) {
            $table->string('xaid',5)->primary()->collation('utf8_general_ci');
            $table->string('name',100)->collation('utf8_general_ci');
            $table->string('type',30)->collation('utf8_general_ci');
            $table->string('maqh',5)->collation('utf8_general_ci');

            $table->foreign('maqh')->references('maqh')->on('quanhuyen');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('xaphuongthitran');
    }
}