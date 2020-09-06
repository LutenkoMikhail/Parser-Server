<?php

namespace App\Http\Controllers;

use App\Server;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class HomeController extends Controller
{


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->maxPaginate = Config::get('constants.paginate.maxPaginateServers');
    }

    /**
     * Show the application dashboard.
     *
     */
    public function index()
    {
        $servers = Server::with('source:id,name')->orderBy('provider')->paginate($this->maxPaginate);
        return view('home', ['servers' => $servers]);
    }
}
