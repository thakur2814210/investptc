<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCommissionLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commission_logs', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->default(0);
            $table->integer('who')->nullable();
            $table->string('level')->nullable();
            $table->integer('amount')->nullable();
            $table->integer('main_amo')->nullable();
            $table->string('title')->nullable();
            $table->integer('trx')->nullable();
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
        //
    }
}
