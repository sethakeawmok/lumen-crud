<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    
    protected $table = 'users';
    protected $fillable = [
        'id', 'email', 'username', 'name', 'img_profile', 'status'
    ];
    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = ['password'];

}