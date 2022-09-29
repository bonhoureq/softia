<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Etudiants extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = ["nom", "prenom", "mail", "attestations_id"];
    protected $guarded = [];
    public function attestion()
    {
        return $this->hasOne(Attestations::class, 'etudiants_id');
    }

    public function convention()
    {
        return $this->hasMany(Conventions::class, 'etudiants_id');
    }
}
