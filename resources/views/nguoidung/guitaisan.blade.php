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
                                <b>Sun House trao trọn niềmtin</i></b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- -------------------------------------
    ------------------------------------- --}}
    <form action="{{ route('guitaisan') }}" method="POST" runat="server" enctype="multipart/form-data">
        @csrf
        <div class="container">
            <div class=" shadow p-4 rounded">
                <label>
                    <h5><b>Thông tin cơ bản</b></h5>
                </label>
                <div class="form-group">
                    <label><b>Tiêu đề</b></label>
                    <input class="form-control" type="text" name="tieude">
                </div>
                <div class="form-group">
                    <label><b>Loại tài sản</b></label>
                    <select class="form-control select-box" name="loai">
                        @foreach ($loais as $loai)
                            <option value="{{ $loai->id }}" {{ Request::post('loai_id') == $loai->id ? 'selected' : '' }}>
                                Loại:
                                {{ $loai->ten_loai }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label><b>Giá bán($)</b></label>
                    <input class="form-control" type="text" name="gia" placeholder="ví dụ: 100" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1"><b>Nội dung bài viết</b></label>
                    <textarea class="form-control" name="noidung" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                {{-- IMG --}}
                <div class="form-group">
                    <label><b>Hình ảnh nhà thứ 1:</b></label>
                    <div class="input-file">
                        <input type="file" name="file[]" id="hinh1" />
                        <label for="hinh1" class="input-label">
                            <i class="fas fa-cloud-upload-alt icon-upload"></i>
                        </label>
                        <img src="" name="hinh_1" id="hinh1_preview" style="height: 200px;">
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
                        <img src="" name="hinh_2" id="hinh2_preview" style="height: 200px;">
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
                        <img src="" name="hinh_3" id="hinh3_preview" style="height: 200px;">
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
                                <option value="1" {{ Request::post('type') === 'thue' ? 'selected' : '' }}>Cho Thuê</option>
                                <option value="0" {{ Request::post('type') === 'ban' ? 'selected' : '' }}>Rao Bán
                                </option>
                            </select>
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Số phòng ngủ</b></label>
                            <input class="form-control" type="number" name="phongngu" min="0" value="1">
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Số phòng tắm</b></label>
                            <input class="form-control" type="number" name="phongtam" min="0" value="1">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Hướng</b></label>
                            <select class="form-control select-box" name="huong">
                                <option>Đông</option>
                                <option>Tây</option>
                                <option>Nam</option>
                                <option>Bắc</option>
                                <option>Đông Bắc</option>
                                <option>Tây Bắc</option>
                                <option>Đông Nam</option>
                                <option>Tây Nam</option>
                            </select>
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Năm xây dựng</b></label>
                            <input class="form-control" type="number" name="namxaydung" min="0" value="1990">
                        </div>
                    </div>
                    <div div class="col-sm">
                        <div class="form-group">
                            <label><b>Diện tích (m<sup>2</sup>)</b></label>
                            <input class="form-control" type="text" name="dientich" placeholder="ví dụ: 10" required>
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
                    @foreach ($tiennghis as $tiennghi)
                    <div class="col-3">
                        <div class="">
                            <input type="checkbox" name ="dstiennghi[]" value="{{ $tiennghi->id }}" {{ Request::post('tiennghi_id') == $tiennghi->id ? 'checked' : '' }}>
                                {{$tiennghi->ten_tiennghi}}
                        </div>
                    </div>
                    @endforeach
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
                    @include('Component.MAP.Mappicker')
                </div>
                <div class="form-group mt-2">
                    <label for="">Địa chỉ cho bài viết</label>
                    <input type="text" class="form-control" name="diachi" id="diachi"
                        placeholder="Địa chỉ tự động thêm từ bản đồ">
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col">
                            <label for="">Lat</label>
                            <input type="text" class="form-control" placeholder="Tọa độ X" name="toadoX" id="toadoX">
                        </div>
                        <div class="col">
                            <label for="">Lng</label>
                            <input type="text" class="form-control" placeholder="Tọa độ Y" name="toadoY" id="toadoY">
                        </div>
                    </div>

                </div>
            </div>
            <div class="form-group mt-2 text-center w-100">
                <button type="submit" name="btndangbai" class="btn btn-danger btn-lg">Đăng bài</button>
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
