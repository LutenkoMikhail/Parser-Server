<?php

namespace App\Http\Controllers;

use App\Http\Requests\ServerCreateUpdateRequest;
use App\Server;
use App\Source;
use Illuminate\Http\Request;

class ServerController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     */
    public function index()
    {
        return redirect('home');
    }

    /**
     * Show the form for creating a new resource.
     *
     */
    public function create()
    {
        $sources = Source::all();
        return view('server.create',
            [
                'sources' => $sources
            ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     */
    public function store(ServerCreateUpdateRequest $request)
    {
        $status = 'Error creating new record !';
        $server = new Server();
        $server->brand = $request->brand;
        $server->location = $request->location;
        $server->cpu = $request->cpu;
        $server->drive = $request->drive;
        $server->price = $request->price;
        $server->source_id = $request->selectsource;

        if ($server->save()) {
            $status = 'New server created !';
            return redirect()->route('home')->with('status', $status);
        }
        return redirect()->back()->with('status', $status);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Server $server
     */
    public function show(Server $server)
    {
        return view('server.show', [
            'server' => $server
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Server $server
     */
    public function edit(Server $server)
    {
        $sources = Source::all();
        return view('server.edit',
            [
                'sources' => $sources,
                'server' => $server
            ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Server $server
     */
    public function update(ServerCreateUpdateRequest $request, Server $server)
    {
        $status = 'Error saving  record !';
        $server->brand = $request->brand;
        $server->location = $request->location;
        $server->cpu = $request->cpu;
        $server->drive = $request->drive;
        $server->price = $request->price;
        $server->source_id = $request->selectsource;
        if ($server->save()) {
            $status = 'Server updated !';
            return redirect()->route('home')->with('status', $status);
        }
        return redirect()->back()->with('status', $status);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Server $server
     */
    public function destroy(Server $server)
    {
        $status = 'An error occurred while deleting !';
        if ($server) {
            $server->delete();
            $status = 'Deletion was successful !';
        }
        return redirect()->route('home')->with('status', $status);
    }
}
