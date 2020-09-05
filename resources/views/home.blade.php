@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        @if(!empty($servers))
                            <p class="text-center">Servers catalog!</p>

                            <table class="table table-striped mt-3">
                                <thead>
                                <tr>
                                    <th scope="col">Provider</th>
                                    <th scope="col">Brand</th>
                                    <th scope="col">Location</th>
                                    <th scope="col">CPU</th>
                                    <th scope="col">Drive</th>
                                    <th scope="col">Price</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($servers as $server)
                                    <tr>
                                        <th>{{$server->source->name}}</th>
                                        <th>{{$server->brand}}</th>
                                        <th>{{$server->location}}</th>
                                        <th>{{$server->cpu}}</th>
                                        <th>{{$server->drive}}</th>
                                        <th>$ {{$server->price}}</th>
                                        <td>
                                            <div class="btn-group">
                                                <a href="{{ route('server.create') }}"
                                                   class="btn btn-success">
                                                    <i class="fa fa-plus"></i></a>

                                                <a href="{{ route('server.show',['server'=>$server->id]) }}"
                                                   class="btn btn-primary">
                                                    <i class="fa fa-eye"></i></a>
                                                <a href="{{ route('server.edit',['server'=>$server->id]) }}" class="btn btn-warning">
                                                    <i class="fa fa-pencil"></i></a>
                                                <a href="{{ route('server.destroy',['server'=>$server->id]) }}" class="btn btn-danger">
                                                    <i class="fa fa-trash-o"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>

                            {{$servers->links()}}
                        @else
                            <h1>No data.</h1>
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
