<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommisionLogs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commision_logs', function (Blueprint $table) {
            $table->id();
            
            $table->integer('user_id');
            $table->integer('who');
            $table->string('level');
            $table->decimal('amount',11,2);
            $table->decimal('main_amo',11,2);
            $table->string('title');
            $table->string('trx');
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
        Schema::dropIfExists('commision_logs');
    }
}
