<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tehsil extends Model
{
    use HasFactory;
    public function state()
    {
        return $this->belongsTo(State::class, 'sid');
    }

    public function tehsils()
    {
        return $this->hasMany(Tehsil::class, 'did');
    }
    public function district()
    {
        return $this->belongsTo(District::class, 'did');
    }
}
