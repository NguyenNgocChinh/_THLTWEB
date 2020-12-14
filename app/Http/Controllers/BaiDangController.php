<?php

namespace App\Http\Controllers;

use App\Models\BaiDang;
use App\Models\BinhLuan;
use App\Models\DanhGia;
use App\Models\User;
use App\Models\Loai;
use App\Models\TienNghi;
use App\Models\TienNghiBaiDang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BaiDangController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except('show'); //only('store', 'update','create','destro');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        // $baidangs = BaiDang::all();
        // $binhluans = BinhLuan::all();
        // $danhgias = DanhGia::all();
        // $user = User::all();
        // //
        // return view(
        //     'nguoidung.chitietSP',
        //     [
        //         'baidangs' => $baidangs,
        //         'binhluans' => $binhluans,
        //         'danhgias' => $danhgias,
        //         'users' => $user,
        //     ]
        // );
        return redirect()->route('timkiem_baidang');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $loais = Loai::all();
        $tn = TienNghi::all();
        return view('nguoidung.guitaisan',[
            'loais' => $loais,
            'tiennghis'=>$tn,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = [];
        if ($request->hasfile('file')) {

            foreach ($request->file('file') as $file) {
                $name = $file->getClientOriginalName();
                $file->move(public_path() . '/images/', $name);
                $data[] = $name;
            }
        }

        $baidang = new BaiDang();
        $baidang->hinhanh = implode(',', $data);

        $baidang->tieude = $request->tieude;
        $baidang->loai_id = $request->loai;
        $baidang->gia = $request->gia;
        $baidang->isChoThue = $request->hinhthuc;
        $baidang->noidung = $request->noidung;
        $baidang->sophongngu = $request->phongngu;
        $baidang->sophongtam = $request->phongtam;
        $baidang->namxaydung = $request->namxaydung;
        $baidang->huong = $request->huong;
        $baidang->dientich = $request->dientich;
        $baidang->diachi = $request->diachi;
        $baidang->id_goi = 1;
        $baidang->toadoX = $request->toadoX;
        $baidang->toadoY = $request->toadoY;
        $baidang->user_id = Auth::user()->id;
        $baidang->choduyet = 0;

        $kq = $baidang->save();

        if($kq){
            foreach($request->dstiennghi as $tiennghi )
            {
                $tiennghi_bd = new TienNghiBaiDang();
                $tiennghi_bd->baidang_id = $baidang->id;
                $tiennghi_bd->tiennghi_id = $tiennghi;
                $tiennghi_bd->save();
            }
        }

        //return redirect()->back()->with("kq",$kq);
        return redirect()->route('baidang_show', ['baidang' => $baidang->id]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $baidang = BaiDang::select('*')->where('id', $id)->get();
        $binhluan = BinhLuan::join('users', 'users.id', '=', 'user_id')->where('binhluan.baidang_id', '=', $id)->get();
        $user = BaiDang::find($id);
        $user = User::find($user->user_id);
        $tiennghi=TienNghiBaiDang::select('ten_tiennghi')->join('tiennghi','tiennghi.id','=','tiennghi_id')->where('baidang_id','=',$id)->get();

        $baidangs = new BaiDang();
        $baidangs_new = $baidangs->show_new_post();
        return view(
            'nguoidung.chitietSP',
            [
                'baidangs' => $baidang,
                'binhluans' => $binhluan,
                'user' => $user,
                'baidangs_new' => $baidangs_new,
                'tiennghis'=>$tiennghi,
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('nguoidung.suataisan', ['baidang' => BaiDang::find($id), 'loais' => Loai::all()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $baidang = BaiDang::find($id);
        $data = [];
        if ($request->hasfile('file')) {

            foreach ($request->file('file') as $file) {
                $name = $file->getClientOriginalName();
                $file->move(public_path() . '/images/', $name);
                $data[] = $name;
            }
        }

        $baidang->hinhanh = implode(',', $data);

        $baidang->tieude = $request->tieude;
        $baidang->loai_id = $request->loai;
        $baidang->gia = $request->gia;
        $baidang->isChoThue = $request->hinhthuc;
        $baidang->noidung = $request->noidung;
        $baidang->sophongngu = $request->phongngu;
        $baidang->sophongtam = $request->phongtam;
        $baidang->namxaydung = $request->namxaydung;
        $baidang->huong = $request->huong;
        $baidang->dientich = $request->dientich;
        $baidang->diachi = $request->diachi;
        $baidang->id_goi = 1;
        $baidang->toadoX = $request->toadoX;
        $baidang->toadoY = $request->toadoY;
        $baidang->user_id = Auth::user()->id;
        $baidang->tiennghi = "tivi";
        $baidang->choduyet = 0;

        $baidang->update();
        return redirect()->route('baidang_show', ['baidang' => $baidang->id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $baidang = BaiDang::find($id);
        $baidang->delete();
    }
}
