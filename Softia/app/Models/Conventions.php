<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Conventions extends Model
{
    use HasFactory;

    protected $guarded = [];
    public function etudiant()
    {
        return $this->belongsTo(Etudiants::class,'etudiants_id');
    }

    public function attestation()
    {
        return $this->belongsTo(Attestations::class);
    }
}
