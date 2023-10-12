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
        Schema::create('tb_usuarios', function (Blueprint $table) {
            $table->id('usu_id');
            $table->string('usu_nome');
            $table->string('usu_email')->unique();
            $table->string('usu_senha');
            // $table->timestamp('email_verified_at')->nullable();
            // $table->rememberToken();
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tb_usuarios');
    }
};
