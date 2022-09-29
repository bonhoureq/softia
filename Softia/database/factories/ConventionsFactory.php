<?php

namespace Database\Factories;

use App\Models\Conventions;
use Illuminate\Database\Eloquent\Factories\Factory;

class ConventionsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    protected $model = Conventions::class;

    public function definition()
    {
        return [
            'nom' => $this->faker->name(),
            'nbHeur' => $this->faker->randomDigitNotZero(),
        ];
    }
}
