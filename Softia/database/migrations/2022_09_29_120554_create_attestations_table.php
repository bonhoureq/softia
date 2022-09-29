<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!schema::hasTable('attestations')) {
            Schema::create('attestations', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('etudiant_id');
                $table->foreign('etudiant_id')->references('id')->on('etudiants');
                $table->unsignedBigInteger('convention_id');
                $table->foreign('convention_id')->references('id')->on('conventions');
                $table->string('message', 255);
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('attestations');
    }
};
