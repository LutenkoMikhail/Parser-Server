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
                                    <h3 class="text-center"> {{ __ ('Create Server.') }} </h3>
                                </div>
                                <form action="{{route ('server.store')}}" method="post"
                                      enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group row">
                                        <label for="provider"
                                               class="col-md-4 col-form-label text-md-right">{{ __('provider') }}</label>
                                        <div class="col-md-6">
                                            <input id="provider" type="text"
                                                   class="form-control @error('provider') is-invalid @enderror"
                                                   name="provider" value="{{ old('provider') }}" maxlength="255"
                                                   required
                                                   autocomplete="title" autofocus>
                                            @error('provider')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="brand"
                                               class="col-md-4 col-form-label text-md-right">{{ __('brand') }}</label>
                                        <div class="col-md-6">
                                            <input id="brand" type="text"
                                                   class="form-control @error('brand') is-invalid @enderror"
                                                   name="brand" value="{{ old('brand') }}" maxlength="255" required
                                                   autocomplete="title" autofocus>
                                            @error('brand')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="location"
                                               class="col-md-4 col-form-label text-md-right">{{ __('location') }}</label>
                                        <div class="col-md-6">
                                            <input id="location" type="text"
                                                   class="form-control @error('location') is-invalid @enderror"
                                                   name="location" value="{{ old('location') }}" maxlength="255"
                                                   required
                                                   autocomplete="location" autofocus>
                                            @error('location')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="cpu"
                                               class="col-md-4 col-form-label text-md-right">{{ __('cpu') }}</label>
                                        <div class="col-md-6">
                                            <input id="cpu" type="text"
                                                   class="form-control @error('cpu') is-invalid @enderror"
                                                   name="cpu" value="{{ old('cpu') }}" maxlength="255" required
                                                   autocomplete="cpu" autofocus>
                                            @error('cpu')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="drive"
                                               class="col-md-4 col-form-label text-md-right">{{ __('drive') }}</label>
                                        <div class="col-md-6">
                                            <input id="drive" type="text"
                                                   class="form-control @error('drive') is-invalid @enderror"
                                                   name="drive" value="{{ old('drive') }}" maxlength="255" required
                                                   autocomplete="drive" autofocus>
                                            @error('drive')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="price"
                                               class="col-md-4 col-form-label text-md-right">{{ __('price') }}</label>
                                        <div class="col-md-6">
                                            <input id="price" type="number"
                                                   class="form-control @error('price') is-invalid @enderror"
                                                   name="price" value="{{ old('price') }}" step="any" min="1" required
                                                   autocomplete="price"
                                                   autofocus>
                                            @error('price')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </div>
                                    </div>


                                    <p>
                                        <label for="selectsource"
                                               class="col-md-4 col-form-label text-md-right">{{ __('source') }}</label>
                                        <select id="selectsource" name="selectsource" multiple="multiple"
                                                size="3" required>
                                            @foreach($sources as $source)
                                                <option value={{$source->id}} >{{$source->name}}</option>
                                            @endforeach
                                        </select>
                                    </p>
                                    @error('selectsource')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Create.</button>
                                    </div>
                            </div>

                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
