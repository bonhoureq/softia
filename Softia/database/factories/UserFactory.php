<?php

namespace Database\Factories;

use App\Models\Etudiants;
use Illuminate\Database\Eloquent\Factories\Factory;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    protected $model = Etudiants::class;

    public function definition()
    {
        return [
            'nom' => $this->faker->firstname(),
            'prenom' => $this->faker->lastname(),
            'mail' => $this->faker->unique()->safeEmail(),
            'conventions_id' => $this->faker->randomDigitNotZero()
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
