<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Source extends Model
{
    protected $fillable = [
        'name', 'url'
    ];
    protected $guarded = ['id', 'created_at', 'updated_at'];

    public function servers()
    {
        return $this->hasMany('App\Server');
    }
}
