<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;


class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        
        // Fetch data for charts
        $productSalesData = $this->getProductSalesData('day');
        $totalPriceSalesData = $this->getTotalPriceSalesData('day'); 
        // dd($totalPriceSalesData);
        // dd($totalPriceSalesData);
        return view('admin.index', [
            'productSalesData' => $productSalesData,
            'totalPriceSalesData' => $totalPriceSalesData,
        ]);
    }

    public function filter(Request $request)
    {
        $period = $request->input('period');
        
        // Fetch data for charts based on the selected period
        $productSalesData = $this->getProductSalesData($period);
        $totalPriceSalesData = $this->getTotalPriceSalesData($period);

        return view('admin.index', [
            'productSalesData' => $productSalesData,
            'totalPriceSalesData' => $totalPriceSalesData,
        ]);
    }


    private function getProductSalesData($period)
    {
        $dateLimit = $this->getDateLimit($period);
        $labels = [];
        $data = [];
    
        if ($period == 'day') {
            // Lấy dữ liệu theo ngày
            $products = Product::select('id')
                ->withCount(['orders' => function ($query) use ($dateLimit) {
                    $query->whereDate('orders.created_at', '=', now()->format('Y-m-d'));
                }])
                ->orderByDesc('orders_count')
                ->limit(5)
                ->get();
    
            $labels = $products->pluck('id');
            $data = $products->pluck('orders_count');
            $name = $products->pluck('name');
        } elseif ($period == 'month') {
            // Lấy dữ liệu theo tháng
            $products = Product::select('id')
                ->withCount(['orders' => function ($query) use ($dateLimit) {
                    $query->whereYear('orders.created_at', now()->year)
                        ->whereMonth('orders.created_at', now()->month);
                }])
                ->orderByDesc('orders_count')
                ->limit(5)
                ->get();
    
            $labels = $products->pluck('id');
            $data = $products->pluck('orders_count');
            $name = $products->pluck('name');
        } elseif ($period == 'year') {
            // Lấy dữ liệu theo năm
            $products = Product::select('id')
                ->withCount(['orders' => function ($query) use ($dateLimit) {
                    $query->whereYear('orders.created_at', now()->year);
                }])
                ->orderByDesc('orders_count')
                ->limit(5)
                ->get();
    
            $labels = $products->pluck('id');
            $data = $products->pluck('orders_count');
            $name = $products->pluck('name');
        }
    
        return [
            'labels' => $labels,
            'data' => $data,
            'names' => $name
        ];
    }
    


private function getTotalPriceSalesData($period)
{
    $labels = [];
    $totalSales = [];

    if ($period === 'day') {
        $totalSalesData = Order::selectRaw('DATE(orders.created_at) as date')
            ->selectRaw('SUM(total_price) as total_sales')
            ->whereDate('orders.created_at', '=', now()->format('Y-m-d')) // Chỉ lấy doanh thu của ngày hôm nay
            ->groupBy('date')
            ->get();

        $labels = $totalSalesData->pluck('date');
        $totalSales = $totalSalesData->pluck('total_sales');
    } elseif ($period === 'month') {
        $month = now()->month;
        $totalSalesData = Order::selectRaw('DATE(orders.created_at) as date')
            ->selectRaw('SUM(total_price) as total_sales')
            ->whereYear('orders.created_at', '=', now()->year)
            ->whereMonth('orders.created_at', '=', $month)
            ->groupBy('date')
            ->get();

        $labels = $totalSalesData->pluck('date');
        $totalSales = $totalSalesData->pluck('total_sales');
        
    } elseif ($period === 'year') {
        $totalSalesData = Order::selectRaw('MONTH(orders.created_at) as month')
            ->selectRaw('SUM(total_price) as total_sales')
            ->whereYear('orders.created_at', '=', now()->year)
            ->groupBy('month')
            ->get();

        $labels = $totalSalesData->pluck('month');
        $totalSales = $totalSalesData->pluck('total_sales');
       
    }

    return [
        'labels' => $labels,
        'totalSales' => $totalSales,
    ];
}


    private function getDateLimit($period)
    {
        $dateLimit = Carbon::now(); 
    
        if ($period == 'day') {
            $dateLimit->subDays(1);
        } elseif ($period == 'month') {
            $dateLimit->subMonths(30); 
        } elseif ($period == 'year') {
            $dateLimit->subYears(1);
        }
    
        return $dateLimit;
    }
    
}
