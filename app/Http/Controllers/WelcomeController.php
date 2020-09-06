<?php

namespace App\Http\Controllers;

use App\Server;
use Illuminate\Support\Facades\Config;

class WelcomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->maxPaginate = Config::get('constants.paginate.maxPaginate');
    }

    /**
     * Show welcome page.
     *
     */
    public function index()
    {
        $servers = Server::with('source:id,name')->orderBy('provider')->paginate($this->maxPaginate);
        return view('show', ['servers' => $servers]);
    }
}
