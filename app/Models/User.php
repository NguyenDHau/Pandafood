<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'pdf_users';
    protected $primaryKey = 'user_id';
}
