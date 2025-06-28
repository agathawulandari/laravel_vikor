@extends('components.app')

@section('content')
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Kriteria</h1>
    <a href="/kriteria/create" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i> Tambah</a>
</div>

<!-- table -->
<div class="row">
    <div class="col">
        <div class="card" style="overflow-x: auto;">
            <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr class="table-light">
                        <th class="text-center align-middle">No</th>
                        <th class="align-middle">Nama Kriteria</th>
                        <th class="align-middle">Bobot (%)</th>
                        <th class="align-middle">Jenis Kriteria</th>
                        <th class="text-center">Aksi</th>
                    </tr>
                </thead>
                @if ($kriterias->isEmpty())
                <tbody>
                    <tr>
                        <td colspan="5">
                            <p class="text-center pt-3">Tidak ada data</p>
                        </td>
                    </tr>
                </tbody>
                @else
                <tbody>
                    @foreach ($kriterias as $item)
                    <tr>
                        <td class="text-center align-middle">{{ $loop->iteration }}</td>
                        <td class="align-middle">{{ $item->nama_kriteria }}</td>
                        <td class="align-middle">{{ $item->bobot }}</td>
                        <td class="align-middle">{{ $item->jenis_kriteria }}</td>
                        <td class="right aligned collapsing">
                            <div class="d-flex flex-column flex-sm-row justify-content-center">
                                <a href="/kriteria/{{ $item->id_kriteria }}" class="btn btn-sm btn-warning mr-1"><i class="fas fa-fw fa-pencil-alt text-white"></i></a>
                                <button type="button" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#confirmationDelete-{{ $item->id_kriteria }}">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                    @include('admin.kriteria.confirmation-delete', ['item' => $item])
                    @endforeach
                </tbody>
                @endif
            </table>
        </div>
    </div>
</div>

@endsection