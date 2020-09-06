<?php


namespace App\Services;


class ParserINXY implements IParser
{
    protected function dataSampling(array $data)
    {
        $result = [];
        foreach ($data as $item) {
            $server=[];
            $server['provider'] = $item['provider'];
            $server['brand'] = $item['brand'];
            $server['location'] = $item['location'];
            $server['cpu'] = $item['cpu'];
            $server['drive'] = $item['drive_label'];
            $server['price'] = $item['price'];
            $result[]=$server;
        }
        return  $result ;
    }

    public function parsing($sourceDate)
    {
        $result = json_decode($sourceDate, true);
        if (json_last_error()=== JSON_ERROR_NONE) {
            $result=$this->dataSampling($result['data']);
        } else {
            $result=[];
        }
        return  $result ;
    }
}
