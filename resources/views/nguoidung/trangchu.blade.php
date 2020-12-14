@extends('layouts.master')
@section('tieude', 'Trang chủ')
@section('css')
    <!--FLATICON-->
    <link rel="stylesheet" href="{{ asset('webfonts/flaticon/flaticon.css') }}">
    <!-- LEAFLET -->
    <link rel="stylesheet" href="{{ asset('css/leaflet.css') }}" />
    <!-- locate leaflet -->
    <link rel="stylesheet" href="{{ asset('css/L.Control.Locate.min.css') }}" />
    <!-- GLIDER -->
    <link rel="stylesheet" href="{{ asset('css/glide.core.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/glide.theme.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/gliderCustom.css') }}">
    <!-- END GLIDER -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
@endsection

@section('noidung')
    <!-- MAPS START -->
    <section class="map-detail">
        <div id="map"></div>
        <div class="search shadow">
            <div class="container">
                <form action="{{ route('timkiem_baidang') }}" method="GET">
                    <div class="row">
                        <div class="col-xs-12 col-md-3 pl-4">
                            <div class="form-group">
                                <input type="text" class="form-control" id="search" name="keyword">
                            </div>
                        </div>
                        <div class=" col-xs-12 col-sm-12 col-md-2">
                            <div class="form-group">
                                <select class="form-control select-box" name="loai_id" aria-placeholder="Loại tài sản">
                                    <option selected disabled hidden value="tatca">Loại tài sản</option>
                                    @foreach ($ds_loai as $value)
                                        <option value="{{ $value->id }}">{{ $value->ten_loai }}</option>
                                    @endforeach
                                    <option value="tatca">Tất cả</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <div class="form-group">
                                <select class="form-control select-box" name="type" aria-placeholder="Hình thức">
                                    <option selected disabled hidden value="tatca">Hình thức</option>
                                    <option value="ban">Bán</option>
                                    <option value="thue">Thuê</option>
                                    <option value="tatca">Tất cả</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <div class="form-group text-center">
                                <select class="form-control select-box" name="huong" aria-placeholder="Hướng nhà">
                                    <option selected disabled hidden value="tatca">Hướng nhà</option>
                                    <option value="Dong">Đông</option>
                                    <option value="Tay">Tây</option>
                                    <option value="Nam">Nam</option>
                                    <option value="Bac">Bắc</option>
                                    <option value="Dong-Bac">Đông Bắc</option>
                                    <option value="Tay-Bac">Tây Bắc</option>
                                    <option value="Dong-Nam">Đông Nam</option>
                                    <option value="Tay-Nam">Tây Nam</option>
                                    <option value="tatca">Tất cả</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-3 p-0">
                            <div class="row flex-row m-0 justify-content-center">
                                <div class="form-group advanced-search">
                                    <a class="btn advanced-search-btn" id="advanced__search__btn">Nâng cao<i
                                            class="pl-2 fas fa-ellipsis-v"></i></a>
                                    <button class="btn btn-lg btn-search btn-outline-danger bg_button m-0"
                                        id="btn-search">Tìm
                                        kiếm</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="advanced__search__wrapper shadow" id="advanced__search">
                        <div class="container">
                            <div class="form-group-inner">
                                <ul class="terms-list">
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input type="checkbox" class="check-with-lable" name="" id="id_dieuhoa">
                                            <label class="label-for-check" for="id_dieuhoa">Ti Vi</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input type="checkbox" class="check-with-lable" name="" id="id_lonuong">
                                            <label class="label-for-check" for="id_lonuong">Tủ lạnh</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maysay">
                                            <label class="label-for-check" for="id_maysay">Máy giặt</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_phonggym">
                                            <label class="label-for-check" for="id_phonggym">Điều hòa</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat">
                                            <label class="label-for-check" for="id_maygiat">Sofa</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat1">
                                            <label class="label-for-check" for="id_maygiat1">Tủ quần áo</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat2">
                                            <label class="label-for-check" for="id_maygiat2">Giường ngủ</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat3">
                                            <label class="label-for-check" for="id_maygiat3">Lò vi sóng</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat4">
                                            <label class="label-for-check" for="id_maygiat4">Wifi</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat5">
                                            <label class="label-for-check" for="id_maygiat5">Máy sấy khô</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat55">
                                            <label class="label-for-check" for="id_maygiat55">Máy lọc nước</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat6">
                                            <label class="label-for-check" for="id_maygiat6">Bàn ăn</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat7">
                                            <label class="label-for-check" for="id_maygiat7">Tủ bếp</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat8">
                                            <label class="label-for-check" for="id_maygiat8">Phòng gym</label>
                                        </div>
                                    </li>
                                    <li class="list-item">
                                        <div class="list-item-inner">
                                            <input class="check-with-lable" type="checkbox" name="" id="id_maygiat9">
                                            <label class="label-for-check" for="id_maygiat9">Hồ bơi</label>
                                        </div>
                                    </li>
                                </ul>
                                <div class="row d-flex align-items-center justify-content-center footer-advanced">
                                    <div class="col-xs-12 col-md-3 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control select-box" name="sophongngu"
                                                aria-placeholder="Số phòng ngủ">
                                                <option selected disabled hidden>Số Phòng Ngủ</option>
                                                <option value="1">1+</option>
                                                <option value="2">2+</option>
                                                <option value="3">3+</option>
                                                <option value="4">4+</option>
                                                <option value="5">5+</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-3 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control select-box" name="sophongtam"
                                                aria-placeholder="Số phòng tắm">
                                                <option selected disabled hidden>Số Phòng Tắm</option>
                                                <option value="1">1+</option>
                                                <option value="2">2+</option>
                                                <option value="3">3+</option>
                                                <option value="4">4+</option>
                                                <option value="5">5+</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-3 col-lg-3 range-item">
                                        <div class="">
                                            <input type="text" id="amount" readonly style="border: none;">
                                            <input type="text" name="gia1" id="get_gia_1" hidden>
                                            <input type="text" name="gia2" id="get_gia_2" hidden>
                                            <div id="slider-range"></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-3 col-lg-3 range-item">
                                        <div class="">
                                            <input type="text" id="sqft" readonly style="border: none;">
                                            <input type="text" name="dientich1" id="get_dientich_1" hidden>
                                            <input type="text" name="dientich2" id="get_dientich_2" hidden>
                                            <div id="slider-range_sqft">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- MAPS END -->
    <!-- CONTENT -->
    <!-- --------------------------------------- -->
    <!-- --------------------------------------- -->
    <div class="nhabannoibat">
        <div class="container">
            <div class="row mt-5">
                <div class="col-sm-12">
                    <div class="list-product-subtitle text-center">
                        <p><b style="color: white;">NHÀ NỔI BẬT</b></p>
                        <div class="beta-products-details product-group">
                            <p class="pull-left"><i style="color :white"><b>Nhà đẹp của bạn - Thành công của chúng
                                        tôi</i></b>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-group2">
            <div class="glide_2">
                <div class="glide__track" data-glide-el="track">
                    <ul class="glide__slides">
                        @foreach ($baidangs as $baidang)
                            <li class="glide__slide">
                                <a href="/baidang">
                                    <div class="khung" style="height: 410px">
                                        <div id="nhanoibat_{{ $baidang->id }}" class="carousel slide" data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#nhanoibat_{{ $baidang->id }}" data-slide-to="0"
                                                    class="active"></li>
                                                <li data-target="#nhanoibat_{{ $baidang->id }}" data-slide-to="1"></li>
                                                <li data-target="#nhanoibat_{{ $baidang->id }}" data-slide-to="2"></li>
                                            </ol>
                                            <div class="slide">
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active" data-interval="2000">
                                                        <img src="img/slide/Chothue_1/tải xuống.jpg"
                                                            class="d-block w-100 lazy" alt="...">
                                                    </div>
                                                    <div class="carousel-item" data-interval="2000">
                                                        <img src="img/slide/Chothue_1/h1.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                    <div class="carousel-item" data-interval="2000">
                                                        <img src="img/slide/Chothue_1/h3.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#nhanoibat_{{ $baidang->id }}"
                                                role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#nhanoibat_{{ $baidang->id }}"
                                                role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                            <div class="icon heart-active">
                                                <i class="far fa-heart"></i>
                                            </div>
                                            <div class="raoban px-2">
                                                @if ($baidang->isChoThue == 1)
                                                    Cho thuê
                                                @else
                                                    Rao bán
                                                @endif
                                            </div>
                                            <div class="noibat ml-1 px-2">Nổi bật</div>
                                        </div>
                                        <div class="card-body">
                                            <a class="beta-btn primary" href="#"><i
                                                    style="color :#DE5759">{{ $baidang->loai->ten_loai }}</i> </a>
                                            <a class="beta-btn primary" href="{{ route('baidang_show', $baidang->id) }}">
                                                <h6 style="color: black;"><b>{{ $baidang->tieude }}</b></h6>
                                            </a>
                                            <div class="noidung">
                                                <div class="gia pb-1">Giá: {{ $baidang->gia }}$</div>
                                                <a class="beta-btn primary"
                                                    href="{{ route('baidang_show', $baidang->id) }}">
                                                    <i class="fas fa-map-marker-alt"></i>
                                                    <p class="d-inline pl-1">{{ $baidang->diachi }}</p>
                                                    </i>
                                                </a>
                                                <br>
                                                <div>
                                                    <div class="vattu pt-1">
                                                        <span class="pr-2">Số phòng: {{ $baidang->sophongngu }}</span>
                                                        <span class="pr-2">Phòng tắm: {{ $baidang->sophongtam }}</span>
                                                        <span>Diện tích: {{ $baidang->dientich }}m<sup>2</sup></span><br>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="glide__bullets" data-glide-el="controls[nav]">
                    <button class="glide__bullet" data-glide-dir="=0"></button>
                    <button class="glide__bullet" data-glide-dir="=1"></button>
                    <button class="glide__bullet" data-glide-dir="=2"></button>
                    <button class="glide__bullet" data-glide-dir="=3"></button>
                    <button class="glide__bullet" data-glide-dir="=4"></button>
                    <button class="glide__bullet" data-glide-dir="=5"></button>
                </div>
            </div>
        </div>
    </div>
    <!-- --------------nhà bán--------------- -->
    <!-- --------------------------------------- -->
    <div class="container">
        <div class="row mt-5">
            <div class="col-sm-12">
                <div class="list-product-subtitle">
                    <p><b>NHÀ BÁN MỚI NHẤT</b></p>
                    <div class="beta-products-details product-group">
                        <p class="pull-left"><i style="color :rgb(255, 26,26, 0.7)"><b>Sun House trao trọn niềm tin</i></b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-group">
            <div class="glide">
                <div class="glide__track" data-glide-el="track">
                    <ul class="glide__slides">
                        @foreach ($raobans as $raoban)
                            <li class="glide__slide">
                                <div class="row">
                                    <div class="khung" style="height: 410px">
                                        <div id="nhabanmoi_{{ $raoban->id }}"
                                            class="carousel
                                                                                                                                                                                                                                                                                slide"
                                            data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#nhabanmoi_{{ $raoban->id }}" data-slide-to="0"
                                                    class="active"></li>
                                                <li data-target="#nhabanmoi_{{ $raoban->id }}" data-slide-to="1"></li>
                                                <li data-target="#nhabanmoi_{{ $raoban->id }}" data-slide-to="2"></li>
                                            </ol>
                                            <div class="slide">
                                                <div class="carousel-inner">
                                                    <div class="carousel-item
                                                                                                                                                                                                                                                                                        active"
                                                        data-interval="2000">
                                                        <img src="img/slide/slide1/h1.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                    <div class="carousel-item" data-interval="2000">
                                                        <img src="img/slide/slide1/h2.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                    <div class="carousel-item" data-interval="2000">
                                                        <img src="img/slide/slide1/h3.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="icon heart-active">
                                                <i class="far fa-heart"></i>
                                            </div>
                                            <div class="raoban px-2">
                                                @if ($raoban->isChoThue == 1)
                                                    Cho thuê
                                                @else
                                                    Rao bán
                                                @endif
                                            </div>
                                            <div class="noibat px-2">Nổi bật</div>
                                            <a class="carousel-control-prev" href="#nhabanmoi_{{ $raoban->id }}"
                                                role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#nhabanmoi_{{ $raoban->id }}"
                                                role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <a class="beta-btn primary" href="product.html"><i
                                                    style="color :#DE5759">{{ $raoban->loai->ten_loai }}</i> </a>
                                            <a class="beta-btn primary" href="{{ route('baidang_show', $baidang->id) }}">
                                                <h6 style="color: black;"><b>{{ $raoban->tieude }}</b>
                                                </h6>
                                            </a>
                                            <div class="noidung">
                                                <div class="gia pb-1">Giá: {{ $raoban->gia }}$</div>
                                                <a class="beta-btn primary" href="product.html">
                                                    <i class="fas fa-map-marker-alt"></i>
                                                    <p class="d-inline pl-1">{{ $raoban->diachi }}</p>
                                                    </i>
                                                </a>
                                                <br>
                                                <div>
                                                    <div class="vattu pt-1">
                                                        <span class="pr-2">Số phòng: {{ $raoban->sophongngu }}</span>
                                                        <span class="pr-2">Phòng tắm: {{ $raoban->sophongtam }}</span>
                                                        <span>Diện tích: {{ $raoban->dientich }}m<sup>2</sup></span><br>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="glide__bullets" data-glide-el="controls[nav]">
                    <button class="glide__bullet" data-glide-dir="=0"></button>
                    <button class="glide__bullet" data-glide-dir="=1"></button>
                    <button class="glide__bullet" data-glide-dir="=2"></button>
                    <button class="glide__bullet" data-glide-dir="=3"></button>
                    <button class="glide__bullet" data-glide-dir="=4"></button>
                    <button class="glide__bullet" data-glide-dir="=5"></button>
                </div>
            </div>
        </div>
    </div>
    <!-- --------------cho thuê--------------- -->
    <!-- --------------------------------------- -->
    <div class="container">
        <div class="row mt-5">
            <div class="col-sm-12">
                <div class="list-product-subtitle">
                    <p><b>NHÀ CHO THUÊ MỚI NHẤT</b></p>
                    <div class="beta-products-details product-group">
                        <p class="pull-left"><i style="color :rgb(255, 26,26, 0.7)"><b>Sun House trao trọn niềm tin</i></b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-group">
            <div class="glide">
                <div class="glide__track" data-glide-el="track">
                    <ul class="glide__slides">
                        @foreach ($chothues as $chothue)
                            <li class="glide__slide">
                                <div class="row">
                                    <div class="khung" style="height: 410px">
                                        <div id="nhathuemoi_{{ $chothue->id }}"
                                            class="carousel
                                                                                                                                                                                                                                                                                slide"
                                            data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#nhathuemoi_{{ $chothue->id }}" data-slide-to="0"
                                                    class="active"></li>
                                                <li data-target="#nhathuemoi_{{ $chothue->id }}" data-slide-to="1"></li>
                                                <li data-target="#nhathuemoi_{{ $chothue->id }}" data-slide-to="2"></li>
                                            </ol>
                                            <div class="slide">
                                                <div class="carousel-inner">
                                                    <div class="carousel-item
                                                                                                                                                                                                                                                                                        active"
                                                        data-interval="2000">
                                                        <img src="img/slide/slide1/h1.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                    <div class="carousel-item" data-interval="2000">
                                                        <img src="img/slide/slide1/h2.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                    <div class="carousel-item" data-interval="2000">
                                                        <img src="img/slide/slide1/h3.jpg" class="d-block w-100 lazy"
                                                            alt="...">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="icon heart-active">
                                                <i class="far fa-heart"></i>
                                            </div>
                                            <div class="raoban px-2">
                                                @if ($chothue->isChoThue == 1)
                                                    Cho thuê
                                                @else
                                                    Rao bán
                                                @endif
                                            </div>
                                            <div class="noibat px-2" @if ($chothue->isChoThue == 1) style="left:82px"
                        @endif>Nổi bật
                </div>
                <a class="carousel-control-prev" href="#nhathuemoi_{{ $chothue->id }}" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#nhathuemoi_{{ $chothue->id }}" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="card-body">
                <a class="beta-btn primary" href="product.html"><i style="color :#DE5759">{{ $chothue->loai->ten_loai }}</i>
                </a>
                <a class="beta-btn primary" href="{{ route('baidang_show', $baidang->id) }}">
                    <h6 style="color: black;"><b>{{ $chothue->tieude }}</b>
                    </h6>
                </a>
                <div class="noidung">
                    <div class="gia pb-1">Giá: {{ $chothue->gia }}$</div>
                    <a class="beta-btn primary" href="product.html">
                        <i class="fas fa-map-marker-alt"></i>
                        <p class="d-inline pl-1">{{ $chothue->diachi }}</p>
                        </i>
                    </a>
                    <br>
                    <div>
                        <div class="vattu pt-1">
                            <span class="pr-2">Số phòng: {{ $chothue->sophongngu }}</span>
                            <span class="pr-2">Phòng tắm: {{ $chothue->sophongtam }}</span>
                            <span>Diện tích: {{ $chothue->dientich }}m<sup>2</sup></span><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </li>
    @endforeach
    </ul>
    </div>
    <div class="glide__bullets" data-glide-el="controls[nav]">
        <button class="glide__bullet" data-glide-dir="=0"></button>
        <button class="glide__bullet" data-glide-dir="=1"></button>
        <button class="glide__bullet" data-glide-dir="=2"></button>
        <button class="glide__bullet" data-glide-dir="=3"></button>
        <button class="glide__bullet" data-glide-dir="=4"></button>
        <button class="glide__bullet" data-glide-dir="=5"></button>
    </div>
    </div>
    </div>
    </div>
    <!-- --------------------------------------- -->
    <!-- --------------------------------------- -->
    <div class="container">
        <div class="row mt-5">
            <div class="col-sm-12">
                <div class="list-product-subtitle slogan">
                    <br>
                    <p><b>TẠI SAO BẠN CHỌN CHÚNG TÔI</b></p>
                    <div class="beta-products-details product-group">
                        <p class="pull-left"><i style="color :rgb(255, 26, 26, 0.7)"><b>Uy tín - Tận tình - Chất
                                    lượng</i></b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="choose-us">
            <div class="row row-eq-height text-center d-flex flex-wrap align-item-start justify-content-around">
                <div class="product col-xs-12 col-lg-4 p-0">
                    <div class="khung_1 pt-5">
                        <div class="icon_1 text-center">
                            <i class="flaticon-high-five"></i>
                        </div>
                        <div class="text-dark mt-5">
                            <h6><b>Được hàng nghìn người tin cậy</b></h6>
                            <div class="noidung">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam nihil voluptatem,
                                    temporibus accusantium, repudiandae nostrum vero cupiditate nam vitae enim, voluptatibus
                                    placeat consequuntur
                                    ipsa. Obcaecati error cum consectetur adipisci debitis.
                                </p>
                            </div>
                        </div>
                        <div class="line"></div>
                    </div>
                </div>
                <div class="product col-xs-12 col-lg-4 p-0">
                    <div class="khung_1 pt-5">
                        <div class="icon_1 text-center">
                            <i class="flaticon-house"></i>
                        </div>
                        <div class="text-dark mt-5">
                            <h6><b>Không gian rộng rãi, thoải mái</b></h6>
                            <div class="noidung">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam nihil voluptatem,
                                    temporibus accusantium, repudiandae nostrum vero cupiditate nam vitae enim, voluptatibus
                                    placeat consequuntur
                                    ipsa. Obcaecati error cum consectetur adipisci debitis.
                                </p>
                            </div>
                        </div>
                        <div class="line"></div>
                    </div>
                </div>
                <div class="product col-xs-12 col-lg-4 p-0">
                    <div class="khung_1 pt-5">
                        <div class="icon_1 text-center">
                            <i class="flaticon-profit-1"></i>
                        </div>
                        <div class="text-dark mt-5">
                            <h6><b>Dễ dàng trong việc mua bán</b></h6>
                            <div class="noidung">
                                <p>Lorem ipsum dolor sit amet</p>
                            </div>
                        </div>
                        <div class="line"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END CONTENT -->
@endsection

@section('scripts')
    <script src="{{ asset('js/placeholderTypewriter.js') }}"></script>
    <script src="{{ asset('js/leaflet.js') }}"></script>
    <script src="{{ asset('js/L.Control.Locate.min.js') }}" charset="utf-8"></script>
    <script src="{{ asset('js/maps.js') }}"></script>
    <script src="{{ asset('js/glide.min.js') }}"></script>
    <script src="{{ asset('js/load_range_2slide.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
@endsection
