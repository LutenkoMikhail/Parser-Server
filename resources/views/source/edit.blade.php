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

                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-md-12">
                                    <h3 class="text-center"> {{ __ ('Edit Server.') }} </h3>
                                </div>
                                <form action="{{route ('source.update',$source->id)}}" method="post"
                                      enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group row">
                                        <label for="name"
                                               class="col-md-4 col-form-label text-md-right">{{ __('name') }}</label>
                                        <div class="col-md-6">
                                            <input id="name" type="text"
                                                   class="form-control @error('name') is-invalid @enderror"
                                                   name="name" value="{{ $source->name }}" maxlength="255"
                                                   required
                                                   autocomplete="name" autofocus>
                                            @error('name')
                                            <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                              </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="url"
                                               class="col-md-4 col-form-label text-md-right">{{ __('url') }}</label>
                                        <div class="col-md-6">
                                            <input id="url" type="text"
                                                   class="form-control @error('url') is-invalid @enderror"
                                                   name="url" value="{{ $source->url }}" maxlength="255"
                                                   required
                                                   autocomplete="url" autofocus>
                                            @error('url')
                                            <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                              </span>
                                            @enderror
                                            <div class="text-center">
                                                <button type="submit" class="btn btn-primary">Edit.</button>
                                            </div>
                                        </div>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
@endsection

