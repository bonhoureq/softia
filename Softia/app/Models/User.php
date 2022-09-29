<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
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
