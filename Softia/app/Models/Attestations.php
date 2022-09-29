<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attestations extends Model
{
    use HasFactory;

    public function etudiant()
    {
        return $this->belongsTo(Etudiants::class,'etudiants_id');
    }
    public function convention()
    {
        return $this->hasMany(Conventions::class);
    }
}
