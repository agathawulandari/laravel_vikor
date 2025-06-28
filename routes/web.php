<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\SubKriteriaController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('admin.dashboard');
});

Route::get('/kriteria', [KriteriaController::class, 'index']);
Route::get('/kriteria/create', [KriteriaController::class, 'create']);
Route::get('/kriteria/{id_kriteria}', [KriteriaController::class, 'edit']);
Route::post('/kriteria', [KriteriaController::class, 'store']);
Route::put('/kriteria/{id_kriteria}', [KriteriaController::class, 'update']);
Route::delete('/kriteria/{id_kriteria}', [KriteriaController::class, 'destroy']);

Route::get('/subkriteria', [SubKriteriaController::class, 'index']);
