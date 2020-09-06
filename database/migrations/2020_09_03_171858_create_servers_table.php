<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('servers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('provider')->nullable();
            $table->string('brand')->nullable();
            $table->string('location')->nullable();
            $table->string('cpu')->nullable();
            $table->string('drive')->nullable();
            $table->float('price')->unsigned()->nullable();
            $table->unsignedBigInteger('source_id')->nullable();
            $table->timestamps();
            $table->foreign('source_id')
                ->references('id')
                ->on('sources')->onDelete('cascade');
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('servers');
    }
}
