@extends('admin.layouts.app')

@section('main')
 
 
<!-- Main -->
<div class="app-main__inner">
                    <div class="app-page-title">
                        <div class="page-title-wrapper">
                            <div class="page-title-heading">
                                
                                <div>
                                    <h3>Đơn hàng</h3>
                                    <div class="page-title-subheading">
                                        Xem, xóa và quản lý.
                                    </div> 
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-card mb-3 card">

                                <div class="card-header">

                                    <form>
                                        <div class="input-group">
                                            <input type="search" name="search" id="search"
                                                placeholder="Tìm kiếm" class="form-control">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn-danger">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                                                    </svg>
                                                </button>
                                            </span>
                                        </div>
                                    </form>

                                </div>

                                <div class="table-responsive">
                                    <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center">ID</th>
                                                <th>Sản phẩm /Khách Hàng</th>
                                                <th class="text-center">Số Điện Thoại</th>
                                                <th class="text-center">Địa chỉ</th>
                                                <th class="text-center">Tổng giá trị</th>
                                                <th class="text-center">Trạng thái</th>
                                                <th class="text-center">Hành động</th>
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            @foreach($orders as $order)
                                                <tr>
                                                    <td class="text-center text-muted">{{ $order->id }}</td>
                                                    <td>
                                                        <div class="widget-content p-0">
                                                            <div class="widget-content-wrapper">
                                                                <div class="widget-content-left mr-3">
                                                                    <div class="widget-content-left">
                                                                        @php
                                                                            $firstProduct = $order->orderDetails->first();
                                                                            $productImage = $firstProduct ? $firstProduct->product->productImage->first() : null;
                                                                        @endphp

                                                                        <img src="{{ $productImage ? asset('products_img/' . $productImage->path) : asset('path_to_placeholder_image') }}" alt="Product Image" style="width: 50px; height: 50px;">

                                                                    </div>
                                                                </div>
                                                                <div class="widget-content-left flex2">
                                                                    <div class="widget-heading text-black">
                                                                        {{ $order->name ?? 'Khách vãng lai' }} 
                                                                    </div> 
                                                                    <div class="widget-subheading text-black">
                                                                        @php
                                                                            $totalProducts = count($order->orderDetails);
                                                                        @endphp

                                                                        @if($totalProducts > 0)
                                                                            {{ $firstProduct->product->name }}

                                                                            @if($totalProducts > 1)
                                                                                (và {{ $totalProducts - 1 }} sản phẩm khác{{ $totalProducts > 2 ? 's' : '' }})
                                                                            @endif
                                                                        @else
                                                                            Không có sản phẩm nào
                                                                        @endif
                                                                    </div> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">{{ $order->phone_number }}</td>
                                                    <td class="text-center">{{ $order->address }}</td>
                                                    <td class="text-center">{{ number_format($order->total_price, 0, ',', '.') }} VNĐ</td>
                                                    <td class="text-center">
                                                        <div class="badge badge-dark">
                                                            {{ $order->status }}
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="{{ route('admin.order.show', ['order' => $order->id]) }}" class="btn btn-hover-shine btn-outline-primary border-0 btn-sm">Chi tiết</a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                        
                                    </table>
                                </div>
                                <div class="pagination-wrapper d-flex justify-content-end" style="margin-right: 30px">
                                    {{ $orders->links() }} <!-- phân trang -->
                                </div>
                            </div>
                        </div>
                    </div>
                
</div>
<!-- End Main -->

@endsection