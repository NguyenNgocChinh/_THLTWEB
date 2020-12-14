<?php

namespace App\Http\Controllers;

use App\Models\BaiDang;
use App\Models\Loai;
use Illuminate\Http\Request;
use SebastianBergmann\Environment\Console;

class TimKiemController extends Controller
{
    public function show(Request $request)
    {

        $baidangs = new BaiDang();
        $baidangs_new = $baidangs->show_new_post();

        $queries = [];

        //QUERY WHERE column
        $columns = [
            'type', 'loai_id', 'huong'
        ];
        foreach ($columns as $column) {
            if (request()->has($column)) {
                if (request($column) == 'tatca') {
                    continue;
                }
                if ($column == 'type') {
                    if (request($column) == 'thue')
                        $result_request = 1;
                    else
                        $result_request = 0;

                    $baidangs = $baidangs->where('isChoThue', $result_request);
                } else {
                    $baidangs = $baidangs->where($column, request($column));
                }
                $queries[$column] = request($column);
            }
        }


        //QUERY LIKE
        $columns_like = [
            'keyword', 'vitri'
        ];
        foreach ($columns_like as $column) {
            if (request()->has($column)) {
                $column_in_table = $column;
                if ($column == 'keyword') $column_in_table = 'tieude';
                if ($column == 'vitri') $column_in_table = 'baidang.diachi';
                $column = request($column);
                $column = "%" . $column . "%";
                $baidangs = $baidangs->where($column_in_table, 'like', $column);
                $queries[$column] = request($column);
            }
        }

        // QUERY BETWEEN
        $columns_between = [
            'gia', 'dientich'
        ];

        foreach ($columns_between as $column) {
            if (request()->has($column . "1") && request()->has($column . "2")) {
                $column1 = request($column . "1");
                $column2 = request($column . "2");
                if (is_null($column1)) $column1 = 0;
                if (is_null($column2)) {
                    if ($column == 'gia') $column2 = 8000;
                    if ($column == 'dientich') $column2 = 5000;
                }
                $baidangs = $baidangs->whereBetween($column, [$column1, $column2]);
                $queries[$column1] = request($column1);
                $queries[$column2] = request($column2);
            }
        }

        //QUERY Operator
        $columns_operator = [
            'sophongngu', 'sophongtam'
        ];
        foreach ($columns_operator as $column) {
            if (request()->has($column)) {
                if (request($column) == 'tatca') continue;
                $baidangs = $baidangs->where($column, '>=', $column);
                $queries[$column] = request($column);
            }
        }

        //sort
        if (request()->has('sort')) {
            $baidangs = $baidangs->orderBy('created_at', request('sort'));
            $queries['sort'] = request('sort');
        }
        //sort gia
        if (request()->has('sortByGia')) {
            $baidangs = $baidangs->orderBy('gia', request('sortByGia'));
            $queries['sortByGia'] = request('sortByGia');
        }

        //print_r($request->all());

        $baidangs = $baidangs->select(
            'baidang.id',
            'users.name',
            'tieude',
            'loai_id',
            'baidang.diachi',
            'noidung',
            'gia',
            'huong',
            'baidang.trangthai',
            'isChoThue',
            'sophongngu',
            'sophongtam',
            'namxaydung',
            'toadoX',
            'toadoY',
            'dientich',
            'baidang.created_at',
            'baidang.updated_at'
        )
            ->leftJoin('users', 'users.id', '=', 'user_id')

            ->paginate(6)->appends($queries);

        return view('nguoidung.danhsachSP', [
            'baidangs' => $baidangs,
            'baidangs_new' => $baidangs_new,
            'loais' => Loai::all(),
        ]);
    }
}