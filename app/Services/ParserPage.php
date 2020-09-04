<?php


namespace App\Services;


class ParserPage
{
    public $sourcePage;

    /**
     * ParserPage constructor.
     * @param $sourcePage
     */
    public function __construct($sourcePage)
    {
        $this->sourcePage = $sourcePage;
    }


    public function retrievingDataPage()
    {
    }
}
