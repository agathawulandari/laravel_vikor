@extends('components.app')

@section('content')
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Tambah Kriteria</h1>
</div>

<div class="row">
    <div class="col">
        <form action="/kriteria" method="post">
            @csrf
            @method('POST')
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-xl">
                            <div class="mb-3">
                                <label class="form-label">Nama Kriteria</label>
                                <input type="text" name="nama_kriteria" class="form-control @error('nama_kriteria') is-invalid @enderror" value="{{ old('nama_kriteria') }}">
                                @error('nama_kriteria')
                                <span class="invalid-feedback">
                                    Nama kriteria wajib diisi
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Bobot Kriteria</label>
                                <input type="number" inputmode="numeric" name="bobot" class="form-control @error('bobot') is-invalid @enderror" value="{{ old('bobot') }}">
                                @error('bobot')
                                <span class="invalid-feedback">
                                    Bobot kriteria wajib diisi
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Pilih Jenis Kriteria</label>
                                <select id="menu" name="jenis_kriteria" class="form-select form-control @error('jenis_kriteria') is-invalid @enderror">
                                    <option selected disabled>Pilih Jenis Kriteria</option>
                                    @foreach ([
                                    (object) ['value' => 1, 'label' => 'Benefit'],
                                    (object) ['value' => 2, 'label' => 'Cost'],
                                    ] as $item)
                                    <option value="{{ $item->value }}" @selected(old('jenis_kriteria')==$item->value)>{{ $item->label }}</option>
                                    @endforeach
                                </select>
                                @error('jenis_kriteria')
                                <span class="invalid-feedback">
                                    Jenis kriteria wajib dipilih
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Deskripsi</label>
                                <textarea class="form-control" type="text" name="deskripsi" cols="30" rows="5" placeholder="Deskripsi Kriteria">{{ old('deskripsi') }}
                                </textarea>
                            </div>
                            <div class="card-footer">
                                <div class="d-flex justify-content-end" style="gap: 10px;">
                                    <a href="/kriteria" class="btn btn-outline-secondary">Kembali</a>
                                    <input class="btn btn-success" type="submit" name="simpan" value="Simpan">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    @endsection