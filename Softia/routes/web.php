<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {

    $data = DB::table('etudiants')->get();
    $convention = DB::table('conventions')->get();

    return view('formulaire', ['data' => $data], ['convention' => $convention]);
});

Route::post('/', [AttestationController::class, 'add'])->name('sendform');
