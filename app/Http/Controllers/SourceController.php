<?php

namespace App\Http\Controllers;

use App\Http\Requests\SourceCreateUpdateRequest;
use App\Server;
use App\Services\LoadSource;
use App\Services\ParserINXY;
use App\Services\ParserSource;
use App\Source;
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
     * Parsing and save data.
     *
     * @param \App\Source $source
     */
    public function parsing(Source $source)
    {
        $status = 'Error parsing data !';

        $parserInxy = new ParserINXY();
        $sourceData = new LoadSource($source->url);
        $sourceParser = new ParserSource($parserInxy, $sourceData->loadingSource());
        $serverParsing = $sourceParser->parsingData();

        if (count($serverParsing)) {
            foreach ($serverParsing as $item) {
                $item['source_id'] = $source->id;
                $item['created_at'] = new \dateTime;
                $item['updated_at'] = new \dateTime;
                $serversArray[] = $item;
            }

            Server::where('source_id', '=', $source->id)->delete();
            Server::insert($serversArray);

            $status = 'Data converted and written !  ' . count($serverParsing) . ' elements !';
        }
        return redirect()->back()->with('status', $status);
    }

    /**
     * Show the form for creating a new resource.
     *
     */
    public function create()
    {
        return view('source.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     */
    public function store(SourceCreateUpdateRequest $request)
    {
        $status = 'Error creating new record !';
        $source = new Source();
        $source->name = $request->name;
        $source->url = $request->url;

        if ($source->save()) {
            $status = 'New source created !';
            return redirect()->route('source.index')->with('status', $status);
        }
        return redirect()->back()->with('status', $status);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Source $source
     */
    public function show(Source $source)
    {
        return view('source.show_source', [
            'source' => $source
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Source $source
     */
    public function edit(Source $source)
    {
        return view('source.edit',
            [
                'source' => $source,
            ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Source $source
     */
    public function update(SourceCreateUpdateRequest $request, Source $source)
    {
        $status = 'Error saving  record !';
        $source->name = $request->name;
        $source->url = $request->url;
        if ($source->save()) {
            $status = 'Source updated !';
            return redirect()->route('source.index')->with('status', $status);
        }
        return redirect()->back()->with('status', $status);
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
