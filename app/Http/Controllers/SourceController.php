<?php

namespace App\Http\Controllers;

use App\Services\LoadSource;
use App\Services\ParserINXY;
use App\Services\ParserSource;
use App\Source;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class SourceController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->maxPaginate = Config::get('constants.paginate.maxPaginateSources');
    }

    /**
     * Display a listing of the resource.
     *
     */
    public function index()
    {
        $sources = Source::orderBy('name')->paginate($this->maxPaginate);
        return view('source.show', ['sources' => $sources]);

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Source $source
     */
    public function parsing(Source $source)
    {
        $parserInxy = new ParserINXY();

        $sourceData = new LoadSource($source->url);

        $sourceParser=new ParserSource( $parserInxy,$sourceData->loadingSource());
        ddd($sourceParser->parsingData());
        return view('sorry',
            [
                'nameClass' => __CLASS__,
                'nameMethod' => __METHOD__
            ]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     */
    public function create()
    {
        return view('sorry',
            [
                'nameClass' => __CLASS__,
                'nameMethod' => __METHOD__
            ]
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     */
    public function store(Request $request)
    {
        return view('sorry',
            [
                'nameClass' => __CLASS__,
                'nameMethod' => __METHOD__
            ]
        );
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Source $source
     */
    public function show(Source $source)
    {
        return view('sorry',
            [
                'nameClass' => __CLASS__,
                'nameMethod' => __METHOD__
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Source $source
     */
    public function edit(Source $source)
    {
        return view('sorry',
            [
                'nameClass' => __CLASS__,
                'nameMethod' => __METHOD__
            ]
        );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Source $source
     */
    public function update(Request $request, Source $source)
    {
        return view('sorry',
            [
                'nameClass' => __CLASS__,
                'nameMethod' => __METHOD__
            ]
        );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Source $source
     */
    public function destroy(Source $source)
    {
        $status = 'An error occurred while deleting !';
        if ($source) {
            $source->delete();
            $status = 'Deletion was successful !';
        }
        return redirect()->route('source.index')->with('status', $status);
    }

}
