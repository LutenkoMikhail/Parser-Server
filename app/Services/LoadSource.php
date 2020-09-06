<?php


namespace App\Services;


class LoadSource
{
    private $urlPage;

    /**
     * LoadSource constructor.
     * @param $urlPage
     */
    public function __construct($urlPage)
    {
        $this->urlPage = $urlPage;

    }

    /**
     * loadingSource load source data.
     * return сontents or False
     */
    public function loadingSource()
    {
        $output = curl_init();
        curl_setopt($output, CURLOPT_URL, $this->urlPage);
        curl_setopt($output, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($output, CURLOPT_HEADER, 0);
        $result = curl_exec($output);
        curl_close($output);
        return $result;
    }

}
