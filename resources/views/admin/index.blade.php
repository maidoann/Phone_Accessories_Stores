@extends('admin.layouts.app')

@section('main')
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>
                        <h3>Thống kê</h3>
                        <div class="page-title-subheading">
                           Theo dõi và quản lí doanh thu, sản phẩm
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @if(session('success'))
            <div id="alertSuccess" class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if(session('error'))
            <div id="alertError" class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif

        <script>
            document.addEventListener("DOMContentLoaded", function() {
                setTimeout(function() {
                    var alertSuccess = document.getElementById('alertSuccess');
                    var alertError = document.getElementById('alertError');
                    
                    // Ẩn thông báo thành công sau 2 giây
                    if (alertSuccess) {
                        alertSuccess.style.display = 'none';
                    }

                    // Ẩn thông báo lỗi sau 5 giây
                    if (alertError) {
                        alertError.style.display = 'none';
                    }
                }, 2000); // 2 giây
            });
        </script>
        <div class="row">
            <div class="col-md-12">
                <div class="main-card mb-3 card">
                    <div class="card-header">
                        <div id="filterMessage" class="alert alert-success" style="display: none;"></div>
                        <div class="btn-group" role="group" aria-label="Lọc theo">
                            <form id="filterForm" action="{{ route('admin.filter') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-secondary" name="period" value="day">Ngày</button>
                                <button type="submit" class="btn btn-secondary" name="period" value="month">Tháng</button>
                                <button type="submit"class="btn btn-secondary" name="period" value="year">Năm</button>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                       

                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <span>Biểu đồ Số lượng bán ra </span>
                                </div>
                                <div class="card-body">
                                    <canvas id="myChart1" width="400" height="200"></canvas>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <span>Biểu đồ Doanh thu</span>
                                </div>
                                <div class="card-body">
                                    <canvas id="myChart2" width="400" height="200"></canvas>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var productSalesData = @json($productSalesData);
    var totalPriceSalesData = @json($totalPriceSalesData);

    // Khai báo mảng màu sắc cho các cột
    var colors = [
    'rgba(255, 99, 132, 0.5)',
    'rgba(54, 162, 235, 0.5)',
    'rgba(255, 206, 86, 0.5)',
    'rgba(75, 192, 192, 0.5)',
    'rgba(153, 102, 255, 0.5)',
    'rgba(255, 159, 64, 0.5)',
    'rgba(0, 0, 128, 0.5)',
    'rgba(128, 0, 128, 0.5)',
    'rgba(0, 128, 128, 0.5)',
    'rgba(128, 128, 0, 0.5)',
    'rgba(255, 0, 0, 0.5)',
    'rgba(0, 255, 0, 0.5)',
    'rgba(0, 0, 255, 0.5)',
    'rgba(255, 255, 0, 0.5)',
    'rgba(255, 0, 255, 0.5)',
    'rgba(0, 255, 255, 0.5)',
    'rgba(192, 192, 192, 0.5)',
    'rgba(128, 128, 128, 0.5)',
    'rgba(255, 140, 0, 0.5)',
    'rgba(0, 255, 255, 0.5)',
    'rgba(0, 0, 0, 0.5)',
    'rgba(128, 0, 0, 0.5)',
    'rgba(0, 128, 0, 0.5)',
    'rgba(0, 0, 128, 0.5)',
    'rgba(255, 255, 255, 0.5)',
    'rgba(255, 255, 255, 0.3)',
    'rgba(255, 255, 0, 0.3)',
    'rgba(255, 0, 255, 0.3)',
    'rgba(0, 255, 255, 0.3)',
    'rgba(255, 140, 0, 0.3)',
    'rgba(0, 255, 255, 0.3)',
    'rgba(0, 0, 0, 0.3)',
    'rgba(128, 0, 0, 0.3)',
    'rgba(0, 128, 0, 0.3)',
    'rgba(0, 0, 128, 0.3)',
];


    // Khởi tạo biểu đồ Số lượng bán ra
    // Định nghĩa productSalesData trước khi khởi tạo biểu đồ
   
    var ctx1 = document.getElementById('myChart1').getContext('2d');
    var myChart1 = new Chart(ctx1, {
        type: 'bar',
        data: {
            labels: productSalesData.labels,
            datasets: [{
                label: 'Số lượng bán ra',
                data: productSalesData.data,
                backgroundColor: colors,
                borderColor: colors.map(color => color.replace('0.5', '1')),
                borderWidth: 1
            }]
        },
        options: {
        responsive: true, // Cho phép biểu đồ thích ứng với kích thước của container
        maintainAspectRatio: false, // Tắt việc duy trì tỷ lệ khung hình mặc định

    }   
    });


    // Khởi tạo biểu đồ Doanh thu
    var ctx2 = document.getElementById('myChart2').getContext('2d');
    var myChart2 = new Chart(ctx2, {
        type: 'bar',
        data: {
            labels: totalPriceSalesData.labels,
            datasets: [{
                label: 'Doanh thu',
                data: totalPriceSalesData.totalSales,
                backgroundColor: colors,
                borderColor: colors.map(color => color.replace('0.5', '1')),
                borderWidth: 1
            }]
        },
        options: {
        responsive: true, // Cho phép biểu đồ thích ứng với kích thước của container
        maintainAspectRatio: false, // Tắt việc duy trì tỷ lệ khung hình mặc định

    }
    });
</script>

@endsection
