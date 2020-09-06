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
                                       class="btn btn-sm btn-outline-dark">{{ __('Back') }}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
