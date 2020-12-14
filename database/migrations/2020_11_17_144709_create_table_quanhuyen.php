<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableQuanhuyen extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quanhuyen', function (Blueprint $table) {
            $table->string('maqh',5)->primary()->collation('utf8_general_ci');
            $table->string('name',100)->collation('utf8_general_ci');
            $table->string('type',30)->collation('utf8_general_ci');
            $table->string('matp',5)->collation('utf8_general_ci');

            $table->foreign('matp')->references('matp')->on('tinhthanhpho');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quanhuyen');
    }
}
