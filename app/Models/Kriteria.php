<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kriteria extends Model
{
    protected $table = 'kriterias';

    // Jika menggunakan primary key selain 'id'
    protected $primaryKey = 'id_kriteria';

    protected $guarded = [];
}
