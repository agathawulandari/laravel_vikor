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
        Schema::create('kriterias', function (Blueprint $table) {
            // $table->integer('id_kriteria')->autoIncrement();
            $table->id('id_kriteria');
            $table->string('nama_kriteria', 255);
            $table->decimal('bobot', 5, 2)->default(0.00);
            $table->enum('jenis_kriteria', ['benefit', 'cost'])->default('benefit');
            $table->text('deskripsi')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kriterias');
    }
};
