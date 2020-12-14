<?php

namespace App\Models;

use Carbon\Carbon;
use DateTime;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BaiDang extends Model
{
    use HasFactory;
    protected $table = "baidang";
    protected $primaryKey = "id";
    // public $timestamps = false;

    public function user()
    {
        return $this->belongsTo('App\Models\User', 'id', 'user_id');
    }

    public function goi()
    {
        return $this->belongsTo('App\Models\Goi', 'id', 'id_goi');
    }

    public function loai()
    {
        return $this->belongsTo('App\Models\Loai', 'loai_id', 'id');
    }

    public function danhgia()
    {
        return $this->hasMany('App\Models\DanhGia', 'baidang_id', 'id');
    }
    public function show_new_post()
    {
        return $this->orderBy('created_at', 'desc')->limit(5)->get();
    }
    public function binhluan()
    {
        return $this->hasMany('App\Models\BinhLuan', 'baidang_id', 'id');
    }
    public function tiennghi_baidang()
    {
        return $this->hasMany('App\Models\TienNghiBaiDang','baidang_id','id');
    }
    public function nguoibinhluan()
    {
        return $this->hasManyThrough(
            'App\Models\User',
            'App\Models\BinhLuan',
            'baidang_id',
            'id',
            'id',
        );
    }
    public function formattedCreatedDate()
    {
        $today = Carbon::now()->toDateTimeLocalString();
        $today = new DateTime(date("Y-m-d H:i:s"));
        $this->created_at = new DateTime(date($this->created_at));

        $created_at = $this->created_at;
        $time = $created_at->diff($today);

        $year = $time->y;
        $month = $time->m;
        $days = $time->d;
        $hours = $time->h;
        $minute = $time->i;
        $second = $time->s;
        $alldays = $time->days;
        if ($year > 0) {
            return  $year . " năm trước";
        } else if ($month > 0) {
            return  $month . " tháng trước";
        } else if ($days > 0) {
            return  $days . " ngày trước";
        } else if ($hours > 0) {
            return  $hours . " giờ trước";
        } else if ($minute > 0) {
            return  $minute . " phút trước";
        } else if ($second > 0) {
            return  $second . " giây trước";
        } else
            return  $created_at;
    }
    public static function boot(){
        parent::boot();
        static::deleting(function($baidang){
            foreach($baidang->tiennghi_baidang as $tiennghi)
            {
                $tiennghi->delete();
            }
            foreach($baidang->binhluan as $binhluan)
            {
                $binhluan->delete();
            }
        });
    }
}
