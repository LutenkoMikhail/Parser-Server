<?php

namespace App\Http\Controllers;

use App\Server;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class HomeController extends Controller
{
    protected $maxPaginate;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->maxPaginate = Config::get('constants.paginate.maxPaginate');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $servers = Server::with('source:id,name')->orderBy('source_id')->paginate($this->maxPaginate);
        return view('home',['servers'=>$servers]);
    }
}
