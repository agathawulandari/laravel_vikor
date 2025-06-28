<?php

namespace App\Http\Controllers;

use App\Models\Kriteria; //
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;

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

        Alert::success('Berhasil', 'Kriteria berhasil ditambahkan.');
        return redirect('/kriteria');
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

        Alert::success('Berhasil', 'Kriteria berhasil dihapus.');
        return redirect('/kriteria');
    }
}
