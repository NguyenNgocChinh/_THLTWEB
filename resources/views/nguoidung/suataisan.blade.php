@extends('layouts.master')
@section('tieude', 'guitaisan')
@section('css')
    <!-- END GLIDER -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">

    <style>
        .input-file {
            margin: 0 auto;
            width: 100%;
            height: 15rem;
            position: relative;
        }

        .input-label {
            border-radius: 8px;
            border: 1px dotted #eee;
            display: flex;
            align-items: center;
            justify-content: center;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 2;
            cursor: pointer;
        }

        .input-file input[type="file"] {
            display: none;
        }

        .input-file .icon-upload {
            color: #ccc;
            font-size: 3rem;
            pointer-events: none;
        }

    </style>
@endsection
@section('noidung')
    <div class="container">
        <h1>{{ empty($kq) ? '' : $kq }}</h1>
        <div class="row mt-5">
            <div class="col-sm-12">
                <div class="list-product-subtitle">
                    <p><b>GỬI TÀI SẢN</b></p>
                    <div class="beta-products-details product-group">
                        <p class="list-product-subtitle"><i style="color :rgb(255, 26,26, 0.7)">
                                <b>Sun House trao trọn niềm tin</i></b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- -------------------------------------
    ------------------------------------- --}}
    <form action="{{ route('suataisan', $baidang->id) }}" method="POST" runat="server" enctype="multipart/form-data">
        @csrf
        {{ method_field('PUT') }}
        <div class="container">
            <div class=" shadow p-4 rounded">
                <label>
                    <h5><b>Thông tin cơ bản</b></h5>
                </label>
                <div class="form-group">
                    <label><b>Tiêu đề</b></label>
                    <input class="form-control" type="text" name="tieude" value="{{ $baidang->tieude }}">
                </div>
                <div class="form-group">
                    <label><b>Loại tài sản</b></label>
                    <select class="form-control select-box" name="loai">
                        @foreach ($loais as $loai)
                            <option value="{{ $loai->id }}" {{ $baidang->loai_id == $loai->id ? 'selected' : '' }}>
                                Loại:
                                {{ $loai->ten_loai }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label><b>Giá bán($)</b></label>
                    <input class="form-control" type="text" name="gia" placeholder="ví dụ: 100" value="{{ $baidang->gia }}"
                        required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1"><b>Nội dung bài viết</b></label>
                    <textarea class="form-control" name="noidung" id="exampleFormControlTextarea1"
                        rows="10">{{ $baidang->noidung }}</textarea>
                </div>
                {{-- IMG --}}
                @php
                if($baidang->hinhanh == null)
                {
                $hinh = ['0'=>'','1'=>'','2'=>''];
                }
                else
                $hinh = explode(',', $baidang->hinhanh);
                @endphp
                <div class="form-group">
                    <label><b>Hình ảnh nhà thứ 1:</b></label>
                    <div class="input-file">
                        <input type="file" name="file[]" id="hinh1" />
                        <label for="hinh1" class="input-label">
                            <i class="fas fa-cloud-upload-alt icon-upload"></i>
                        </label>
                        <img src="{{ $hinh[0] == '' ? '' : asset('images/' . $hinh[0]) }}" name="hinh_1" id="hinh1_preview"
                            style="height: 200px;">
                    </div>
                </div>
                {{-- IMG --}}
                <div class="form-group">
                    <label><b>Hình ảnh nhà thứ 2:</b></label>
                    <div class="input-file">
                        <input type="file" name="file[]" id="hinh2" />
                        <label for="hinh2" class="input-label">
                            <i class="fas fa-cloud-upload-alt icon-upload"></i>
                        </label>
                        <img src="{{ $hinh[1] == '' ? '' : asset('images/' . $hinh[1]) }}" name="hinh_2" id="hinh2_preview"
                            style="height: 200px;">
                    </div>
                </div>
                {{-- IMG --}}
                <div class="form-group">
                    <label><b>Hình ảnh nhà thứ 3:</b></label>
                    <div class="input-file">
                        <input type="file" name="file[]" id="hinh3" />
                        <label for="hinh3" class="input-label">
                            <i class="fas fa-cloud-upload-alt icon-upload"></i>
                        </label>
                        <img src="{{ $hinh[2] == '' ? '' : asset('images/' . $hinh[2]) }}" name="hinh_3" id="hinh3_preview"
                            style="height: 200px;">
                    </div>
                </div>

            </div>
            {{-- -------------------------------------
            ------------------------------------- --}}
            <div class=" shadow p-4 rounded mt-5">
                <label>
                    <h5><b>Thông tin chi tiết</b></h5>
                </label>
                <div class="row">
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Hình thức</b></label>
                            <select class="form-control select-box" name="hinhthuc">
                                <option value="1" {{ $baidang->isChoThue == 1 ? 'selected' : '' }}>Cho Thuê</option>
                                <option value="0" {{ $baidang->isChoThue == 0 ? 'selected' : '' }}>Rao Bán
                                </option>
                            </select>
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Số phòng ngủ</b></label>
                            <input class="form-control" type="number" name="phongngu" min="0"
                                value="{{ $baidang->sophongngu }}">
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Số phòng tắm</b></label>
                            <input class="form-control" type="number" name="phongtam" min="0"
                                value="{{ $baidang->sophongtam }}">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Hướng</b></label>
                            <select class="form-control select-box" name="huong">
                                <option {{ $baidang->huong == 'Đồng' ? 'selected' : '' }}>Đông</option>
                                <option {{ $baidang->huong == 'Tây' ? 'selected' : '' }}>Tây</option>
                                <option {{ $baidang->huong == 'Nam' ? 'selected' : '' }}>Nam</option>
                                <option {{ $baidang->huong == 'Bắc' ? 'selected' : '' }}>Bắc</option>
                                <option {{ $baidang->huong == 'Đồng Bắc' ? 'selected' : '' }}>Đông Bắc</option>
                                <option {{ $baidang->huong == 'Tây Bắc' ? 'selected' : '' }}>Tây Bắc</option>
                                <option {{ $baidang->huong == 'Đồng Nam' ? 'selected' : '' }}>Đông Nam</option>
                                <option {{ $baidang->huong == 'Tây Nam' ? 'selected' : '' }}>Tây Nam</option>
                            </select>
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Năm xây dựng</b></label>
                            <input class="form-control" type="number" name="namxaydung" min="0"
                                value="{{ $baidang->namxaydung }}">
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Diện tích (m<sup>2</sup>)</b></label>
                            <input class="form-control" type="text" name="dientich" placeholder="ví dụ: 10"
                                value="{{ $baidang->dientich }}" required>
                        </div>
                    </div>

                </div>
            </div>
            {{-- -------------------------------------
            ------------------------------------- --}}
            <div class=" shadow p-4 rounded mt-5">
                <label>
                    <h5><b>Nội thất nhà của bạn</b></h5>
                </label>
                <div class="row">
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="tivi" id="id_dieuhoa">
                            <label class="label-for-check" for="id_dieuhoa">Ti Vi</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="tulanh" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Tủ lạnh</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="maygiat" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Máy giặt</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="dieuhoa" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Điều hòa</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="sofa" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Sofa</label>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="tuquanao" id="id_dieuhoa">
                            <label class="label-for-check" for="id_dieuhoa">Tủ quần áo</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="giuong" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Giường ngủ</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="lovisong" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Lò vi sóng</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="wifi" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Wifi</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="maysay" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Máy sấy khô</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="maylocnuoc" id="id_dieuhoa">
                            <label class="label-for-check" for="id_dieuhoa">Máy lọc nước</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="banan" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Bàn ăn</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="tubep" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Tủ bếp</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="phonggym" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Phòng gym</label>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="list-item-inner">
                            <input type="checkbox" class="check-with-lable" name="hoboi" id="id_lonuong">
                            <label class="label-for-check" for="id_lonuong">Hồ bơi</label>
                        </div>
                    </div>

                </div>


            </div>
            {{-- ---------------------------------------
            --------------------------------------- --}}
            <div class=" shadow p-4 rounded mt-5">
                <label>
                    <h5><b>Bản đồ</b></h5>
                    <p style="color: red">Tự động tạo từ thông số bản đồ (Chỉnh sửa lại nếu hiển thị không đúng)</p>
                </label>
                <div class="agent-map">
                    @include('Component.MAP.Mappicker-edit')
                </div>
                <div class="form-group mt-2">
                    <label for="">Địa chỉ cho bài viết</label>
                    <input type="text" class="form-control" name="diachi" id="diachi"
                        placeholder="Địa chỉ tự động thêm từ bản đồ" value="{{ $baidang->diachi }}">
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col">
                            <label for="">Lat</label>
                            <input type="text" class="form-control" placeholder="Tọa độ X" name="toadoX" id="toadoX"
                                value="{{ $baidang->toadoX }}">
                        </div>
                        <div class="col">
                            <label for="">Lng</label>
                            <input type="text" class="form-control" placeholder="Tọa độ Y" name="toadoY" id="toadoY"
                                value="{{ $baidang->toadoY }}">
                        </div>
                    </div>

                </div>
            </div>
            <div class="form-group mt-2 text-center w-100">
                <button type="submit" name="btndangbai" class="btn btn-danger btn-lg">Sửa bài</button>
            </div>
        </div>

    </form>

@endsection

@section('scripts')
    <script>
        function get_Img_input(hinh) {
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#' + hinh + '_preview').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]); // convert to base64 string
                }
            }
            $('#' + hinh).change(function() {
                readURL(this);
            });
        }

    </script>
    <script>
        $(document).ready(function() {
            const columns_file = ['hinh1', 'hinh2', 'hinh3'];
            columns_file.forEach(item => get_Img_input(item));
        });

    </script>
@endsection
