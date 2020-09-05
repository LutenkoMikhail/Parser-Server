<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Source extends Model
{
    public function servers()
    {
        return $this->hasMany('App\Server');
    }
}
