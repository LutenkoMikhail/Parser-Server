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
            $table->string('brand');
            $table->string('location');
            $table->string('cpu');
            $table->string('drive');
            $table->float('price')->unsigned();;
            $table->unsignedBigInteger('source_id')->nullable();;
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
