@extends('welcome')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                            <p class="text-center">Servers catalog!</p>
                        @if(count($servers))
                            <table class="table table-striped mt-3">
                                <thead>
                                <tr>
                                    <th scope="col">Provider</th>
                                    <th scope="col">Brand</th>
                                    <th scope="col">Location</th>
                                    <th scope="col">CPU</th>
                                    <th scope="col">Drive</th>
                                    <th scope="col">Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($servers as $server)
                                    <tr>
                                        <th>{{$server->provider}}</th>
                                        <th>{{$server->brand}}</th>
                                        <th>{{$server->location}}</th>
                                        <th>{{$server->cpu}}</th>
                                        <th>{{$server->drive}}</th>
                                        <th>$ {{$server->price}}</th>

                                    </tr>
                                @endforeach
                                </tbody>
                            </table>

                            {{$servers->links()}}
                        @else
                                <h1>
                                <p class="text-center">No data.</p>
                          </h1>
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
