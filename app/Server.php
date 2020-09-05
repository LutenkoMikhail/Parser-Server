<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Server extends Model
{
    protected $fillable = [
        'brand', 'location', 'cpu', 'drive', 'price', 'source_id'
    ];

    protected $guarded = ['id', 'created_at', 'updated_at'];


    public function source()
    {
        return $this->belongsTo('App\Source');
    }
}
