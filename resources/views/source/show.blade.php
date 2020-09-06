@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="card text-center">
        <div class="card-header">Dashboard</div>
        </div>
        <div class="card-body">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif
            <h1>
            <p class="text-center">Sources catalog!</p>
            </h1>
            @if(count($sources))

                <table class="table table-striped table-dark">
                    <thead>
                    <tr>
                        <th scope="col">Name provider</th>
                        <th scope="col">Url</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($sources as $source)
                        <tr>
                            <th>{{$source->name}}</th>
                            <th>{{$source->url}}</th>
                            <td>
                                <div class="btn-group">
                                    <a href="{{ route('source.create') }}"
                                       class="btn btn-success">
                                        <i class="fa fa-plus"></i></a>

                                    <a href="{{ route('source.show',['source'=>$source->id]) }}"
                                       class="btn btn-primary">
                                        <i class="fa fa-eye"></i></a>
                                    <a href="{{ route('source.edit',['source'=>$source->id]) }}"
                                       class="btn btn-warning">
                                        <i class="fa fa-pencil"></i></a>
                                    <a href="{{ route('source.destroy',['source'=>$source->id]) }}"
                                       class="btn btn-danger">
                                        <i class="fa fa-trash-o"></i></a>
                                    <a href="{{ route('source.parsing',['source'=>$source->id]) }}"
                                       class="btn btn-info">
                                        <i class="fa fa-download"></i></a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>

                {{$sources->links()}}
            @else
                <h1>
                    <a href="{{ route('source.create') }}"
                       class="btn btn-success">
                        <i class="fa fa-plus"></i></a>

                    <p class="text-center">No data.</p>
                </h1>
            @endif

        </div>
    </div>

@endsection
