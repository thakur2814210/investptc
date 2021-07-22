<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommissionLog extends Model
{
    // protected $guarded = ['id'];
    // protected $table = "commission_logs";
    protected $fillable = [
        'user_id', 'who', 'level', 'amount', 'main_amo', 'title', 'trx'
    ];

    public function userTo()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function userFrom()
    {
        return $this->belongsTo(User::class, 'who');
    }
}
