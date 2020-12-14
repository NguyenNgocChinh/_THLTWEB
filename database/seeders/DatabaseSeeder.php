<?php

namespace Database\Seeders;

use Database\Factories\UserFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();
        $this->call(
            [

                GoiSeeder::class,
                LoaiSeeder::class,
                TienNghiSeeder::class,
                BaiDangSeeder::class,
                DanhGiaSeeder::class,
                BinhLuanSeeder::class,
                // QuanHuyenSeeder::class,
                // TinhThanhPhoSeeder::class,
                // XaPhuongThiTranSeeder::class,
            ]
        );
    }
}