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
                        <div class="row justify-content-center">
                            <div class="col-md-12">
                                <h1 class="text-center">{{('Provider-'.$server->provider)}}  </h1>
                                <h3 class="text-center"> {{  ('Brand- '.$server->brand) }} </h3>
                                <h3 class="text-center"> {{ ('Location-'.$server->location) }} </h3>
                                <h3 class="text-center"> {{ ('CPU-'.$server->cpu) }} </h3>
                                <h3 class="text-center"> {{ ('Drive-'.$server->drive) }} </h3>
                                <h3 class="text-center"> $ {{ ('Price-'.$server->price) }} </h3>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <a href="{{ url()->previous() }}"
                                       class="btn btn-success">
                                        <i class="fa fa-hand-o-left"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

<div class="btn-group">
    <a href="{{ route('server.create') }}"
       class="btn btn-success">
        <i class="fa fa-plus"></i></a>

    <a href="{{ route('server.show',['server'=>$server->id]) }}"
       class="btn btn-primary">
        <i class="fa fa-eye"></i></a>
    <a href="{{ route('server.edit',['server'=>$server->id]) }}"
       class="btn btn-warning">
        <i class="fa fa-pencil"></i></a>
    <a href="{{ route('server.destroy',['server'=>$server->id]) }}"
       class="btn btn-danger">
        <i class="fa fa-trash-o"></i></a>
</div>
