<?php


namespace App\Services;


class ParserSource
{
    protected $parser;
    protected $sourceData;

    /**
     * ParserSource constructor.
     * @param $parser
     * @param $sourceData
     */
    public function __construct(IParser $parser, $sourceData)
    {
        $this->parser = $parser;
        $this->sourceData = $sourceData;
    }


    public function parsingData()
    {
        return $this->parser->parsing($this->sourceData);
    }
}
