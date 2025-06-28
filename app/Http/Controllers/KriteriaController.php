<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kriteria; //

class KriteriaController extends Controller
{
    public function index()
    {
        $kriterias = Kriteria::all();

        return view('admin.kriteria.index', [
            'kriterias' => $kriterias
        ]);
    }
    public function create()
    {
        return view('admin.kriteria.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama_kriteria' => 'required|string|max:255',
            'bobot' => 'required|numeric|min:0',
            'jenis_kriteria' => 'required|string|max:255',
            'deskripsi' => 'nullable|string|max:255',
        ]);

        Kriteria::create($validatedData);

        return redirect('/kriteria')->with('success', 'Kriteria created successfully.');
    }

    public function edit($id_kriteria)
    {
        $kriteria = Kriteria::findOrFail($id_kriteria);
        return view('admin.kriteria.edit', [
            'kriteria' => $kriteria
        ]);
    }

    public function update(Request $request, $id_kriteria)
    {
        $validatedData = $request->validate([
            'nama_kriteria' => 'required|string|max:255',
            'bobot' => 'required|numeric|min:0',
            'jenis_kriteria' => 'required|string|max:255',
            'deskripsi' => 'nullable|string|max:255',
        ]);

        $kriteria = Kriteria::findOrFail($id_kriteria);
        $kriteria->update($validatedData);

        return redirect('/kriteria')->with('success', 'Berhasil mengupdate kriteria.');
    }

    public function destroy($id_kriteria)
    {
        $kriteria = Kriteria::findOrFail($id_kriteria);
        $kriteria->delete();

        return redirect('/kriteria')->with('success', 'Kriteria berhasil dihapus.');
    }
}
