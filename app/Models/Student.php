<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'state', 'email', 'pno', 'DOB'];
    public static function getStateDropdown()
    {
        return self::distinct('state')->pluck('state');
    }
}
