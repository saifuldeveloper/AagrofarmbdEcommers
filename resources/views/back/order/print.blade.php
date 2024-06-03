<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" type="image/x-icon" href="{{ asset('assets/images/' . $setting->favicon) }}" />

    <title>{{ $setting->title }}</title>
    <!-- Bootstrap -->
    <link href="{{ asset('assets/front/css/bootstrap.min.css') }}" rel="stylesheet">

    <link href="{{ asset('assets/front/css/fontawesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/front/css/magnific-popup.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/front/css/jquery-ui.css') }}" rel="stylesheet">

    <link href="{{ asset('assets/front/css/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/front/css/owl.carousel.min.css') }}" rel="stylesheet">

    @yield('css')

    <!-- Main css -->
    <link href="{{ asset('assets/front/css/main.css') }}" rel="stylesheet">

    <style type="text/css">
        @media print
        {
            
            table {
                width: 100%;
                border: 1pt solid #ddd;
                border-collapse: collapse;
                font-size: 11pt;
            }
            table tr td {
                border: 1pt solid #dddd;

            }
            #space { height: 750px; }
        }
    </style>
</head>

<body id="invoice-print" onload="window.print()" id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                @php
                    if ($order->state) {
                        $state = json_decode($order->state, true);
                    } else {
                        $state = [];
                    }
                @endphp
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col text-center">

                                        <!-- Logo -->
                                        <img class="img-fluid mb-5 mh-70" width="80" alt="Logo"
                                            src="{{ asset('assets/images/generalSettingsImages/' . $setting->logo) }}">

                                    </div>
                                </div> <!-- / .row -->
                                <div class="row" style="display: flex">
                                    <div class="col-6" style="float: left;width:60%">
                                        <h5><b>{{ __('Order Details :') }}</b></h5>

                                        {{-- <span
                                            class="text-muted">{{ __('Transaction Id :') }}</span>{{ $order->txnid }}<br> --}}
                                        <span
                                            class="text-muted">{{ __('Order Id :') }}</span>{{ $order->transaction_number }}<br>
                                        <span
                                            class="text-muted">{{ __('Order Date :') }}</span>{{ $order->created_at->format('M d, Y') }}<br>
                                        <span class="text-muted">{{ __('Payment Status :') }}</span>
                                        @if ($order->payment_status == 'Paid')
                                          
                                                {{ __('Paid') }}
                                           
                                        @else
                                           
                                                {{ __('Unpaid') }}
                                          
                                        @endif
                                        <br>
                                        <span
                                            class="text-muted">{{ __('Payment Method :') }}</span>{{ $order->payment_method }}<br>

                                        <br>
                                        <br>
                                    </div>
                                    <div class="col-6" style="float: right;width:40%">
                                        <h5>{{ __('Shipping Address :') }}</h5>
                                        @php
                                            $ship = json_decode($order->shipping_info, true);
                                        @endphp
                                        <span class="text-muted">{{ __('Name') }}: </span>{{ $ship['name'] }} <br>
                                        @if (isset($ship['ship_email']))
                                            <span class="text-muted">{{ __('Email') }}:
                                            </span>{{ @$ship['ship_email'] }}<br>
                                        @endif
                                        <span class="text-muted">{{ __('Phone') }}:
                                        </span>{{ $ship['ship_phone'] }}<br>
                                        @if (isset($ship['ship_address']))
                                            <span class="text-muted">{{ __('Address') }}:
                                            </span>{{ $ship['ship_address'] }}<br>
                                        @endif
                                        @if (isset($ship['ship_country']))
                                            <span class="text-muted">{{ __('Country') }}:
                                            </span>{{ $ship['ship_country'] }}<br>
                                        @endif
                                        @if (isset($ship['ship_city']))
                                            <span class="text-muted">{{ __('City') }}:
                                            </span>{{ $ship['ship_city'] }}<br>
                                        @endif
                                        @if (isset($state['name']))
                                            <span class="text-muted">{{ __('State') }}:
                                            </span>{{ $state['name'] }}<br>
                                        @endif
                                        @if (isset($ship['ship_zip']))
                                            <span class="text-muted">{{ __('Zip') }}:
                                            </span>{{ $ship['ship_zip'] }}<br>
                                        @endif
                                        @if (isset($ship['ship_company']))
                                            <span class="text-muted">{{ __('Company') }}:
                                            </span>{{ $ship['ship_company'] }}<br>
                                        @endif

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">

                                        <!-- Table -->
                                        <div class="gd-responsive-table ">
                                            <table class="table my-4" style="margin-top: 10px;">
                                                <thead>
                                                    <tr>
                                                        <th width="50%" style="float: left">
                                                            <span class="h6">{{ __('Products') }}</span>
                                                        </th>
                                                        <th width="10%" class="px-0 bg-transparent border-top-0">
                                                            <span class="h6">{{ __('Attribute') }}</span>
                                                        </th>
                                                        <th width="20%" class="px-0 bg-transparent border-top-0">
                                                            <span class="h6">{{ __('Quantity') }}</span>
                                                        </th>
                                                        <th width="20%"
                                                            class="px-0 bg-transparent border-top-0 text-right">
                                                            <span class="h6">{{ __('Price') }}</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @php
                                                        $option_price = 0;
                                                        $total = 0;
                                                    @endphp
                                                    @foreach (json_decode($order->cart, true) as $item)
                                                        @php
                                                            $total += $item['main_price'] * $item['qty'];
                                                            $option_price += $item['attribute_price'];
                                                            $grandSubtotal = $total + $option_price;
                                                        @endphp
                                                        <tr>
                                                            <td width="50%">
                                                                {{ $item['name'] }}
                                                            </td>
                                                            <td width="10%" style="text-align: center">
                                                                @if ($item['attribute']['option_name'])
                                                                    @foreach ($item['attribute']['option_name'] as $optionkey => $option_name)
                                                                        <span
                                                                            class="entry-meta"><b>{{ $option_name }}</b>
                                                                            :
                                                                            @if ($setting->currency_direction == 1)
                                                                                {{ $order->currency_sign }}{{ round($item['attribute']['option_price'][$optionkey] * $order->currency_value, 2) }}
                                                                            @else
                                                                                {{ round($item['attribute']['option_price'][$optionkey] * $order->currency_value, 2) }}{{ $order->currency_sign }}
                                                                            @endif

                                                                        </span>
                                                                    @endforeach
                                                                @else
                                                                    -
                                                                @endif
                                                            </td>
                                                            <td width="20%" style="text-align: center">
                                                                {{ $item['qty'] }}
                                                            </td>

                                                            <td width="20%" style="text-align: center">
                                                                @if ($setting->currency_direction == 1)
                                                                    {{ $order->currency_sign }}{{ round($item['main_price'] * $order->currency_value, 2) }}
                                                                @else
                                                                    {{ round($item['main_price'] * $order->currency_value, 2) }}{{ $order->currency_sign }}
                                                                @endif
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                    
                                                    @if ($order->tax != 0)
                                                    
                                                        <tr>
                                                            <td class="px-0 border-top border-top-2">
                                                                <span class="text-muted">{{ __('Tax') }}</span>
                                                            </td>
                                                            <td class="px-0 text-right border-top border-top-2"
                                                                colspan="5">
                                                                <span>
                                                                    @if ($setting->currency_direction == 1)
                                                                        {{ $order->currency_sign }}{{ round($order->tax * $order->currency_value, 2) }}
                                                                    @else
                                                                        {{ round($order->tax * $order->currency_value, 2) }}{{ $order->currency_sign }}
                                                                    @endif
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    @endif
                                                    @if (json_decode($order->discount, true))
                                                        @php
                                                            $discount = json_decode($order->discount, true);
                                                        @endphp
                                                        <tr>
                                                            <td class="px-0 border-top border-top-2">
                                                                <span class="text-muted">{{ __('Coupon discount') }}
                                                                    ({{ $discount['code']['code_name'] }})</span>
                                                            </td>
                                                            <td class="px-0 text-right border-top border-top-2"
                                                                colspan="5">
                                                                <span class="text-danger">
                                                                    @if ($setting->currency_direction == 1)
                                                                        -{{ $order->currency_sign }}{{ round($discount['discount'] * $order->currency_value, 2) }}
                                                                    @else
                                                                        -{{ round($discount['discount'] * $order->currency_value, 2) }}{{ $order->currency_sign }}
                                                                    @endif
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    @endif
                                                    @if (json_decode($order->shipping, true))
                                                        @php
                                                            $shipping = json_decode($order->shipping, true);
                                                        @endphp
                                                        <tr>
                                                            <td style="width: 60%"></td>
                                                            <td></td>
                                                            <td style="width: 10%">
                                                                <span class="text-muted">{{ __('Shipping') }}</span>
                                                            </td>
                                                            <td style="width: 10%; text-align:center">
                                                                <span>
                                                                    @if ($setting->currency_direction == 1)
                                                                        {{ $order->currency_sign }}{{ round($shipping['price'] * $order->currency_value, 2) }}
                                                                    @else
                                                                        {{ round($shipping['price'] * $order->currency_value, 2) }}{{ $order->currency_sign }}
                                                                    @endif

                                                                </span>
                                                            </td>
                                                        </tr>
                                                    @endif
                                                    @if (json_decode($order->state_price, true))
                                                        <tr>
                                                            <td class="px-0 border-top border-top-2">
                                                                <span class="text-muted">{{ __('State Tax') }}</span>
                                                            </td>
                                                            <td class="px-0 text-right border-top border-top-2"
                                                                colspan="5">
                                                                <span>
                                                                    @if ($setting->currency_direction == 1)
                                                                        {{ isset($state['type']) && $state['type'] == 'percentage' ? ' (' . $state['price'] . '%) ' : '' }}
                                                                        {{ $order->currency_sign }}{{ round($order['state_price'] * $order->currency_value, 2) }}
                                                                    @else
                                                                        {{ isset($state['type']) && $state['type'] == 'percentage' ? ' (' . $state['price'] . '%) ' : '' }}
                                                                        {{ round($order['state_price'] * $order->currency_value, 2) }}{{ $order->currency_sign }}
                                                                    @endif

                                                                </span>
                                                            </td>
                                                        </tr>
                                                    @endif

                                                    <tr>
                                                            <td style="width: 60%"></td>
                                                            <td></td>
                                                            <td style="width: 10%">
                                                                @if ($order->payment_method == 'Cash On Delivery')
                                                                <strong>{{ __('Total amount') }}</strong>
                                                            @else
                                                                <strong>{{ __('Total amount due') }}</strong>
                                                            @endif
                                                            </td>
                                                            <td style="width: 10%; text-align:center">
                                                                <span class="h3">
                                                                    @if ($setting->currency_direction == 1)
                                                                        {{ $order->currency_sign }}{{ PriceHelper::OrderTotal($order) }}
                                                                    @else
                                                                        {{ PriceHelper::OrderTotal($order) }}{{ $order->currency_sign }}
                                                                    @endif
                                                                </span>
                                                            </td>
                                                        </tr>
                                                
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

</body>

</html>
