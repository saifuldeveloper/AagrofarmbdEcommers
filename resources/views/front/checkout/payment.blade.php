@extends('master.front')
@section('title')
    {{ __('Payment') }}
@endsection
@section('content')
    <!-- Page Title-->
    <div class="page-title">
        <div class="container">
            <div class="column">
                <ul class="breadcrumbs">
                    <li><a href="{{ route('front.index') }}">{{ __('Home') }}</a> </li>
                    <li class="separator"></li>
                    <li>{{ __('Review your order and pay') }}</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Page Content-->
    <div class="container padding-bottom-3x mb-1  checkut-page">
        <div class="row">
            <!-- Payment Methode-->
            <div class="col-xl-8 col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <h6 class="pb-2">{{ __('Review Your Order') }} :</h6>
                        <hr>
                        <form id="checkout-form" action="{{ route('front.checkout.shipping.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="name">{{ __('সম্পূর্ণ নাম *') }}</label>
                                        <input required class="form-control" name="name" type="text" id="name" placeholder="
                                        সম্পূর্ণ নাম *"
                                            value="{{ isset($user) ? $user->first_name : '' }}">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="checkout-phone">{{ __('মোবাইল নাম্বার *') }}</label>
                                        <input class="form-control" name="ship_phone" type="text" id="checkout-phone"
                                            value="{{ isset($user) ? $user->phone : '' }}" placeholder="মোবাইল নাম্বার *">
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                               {{-- <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="checkout-email">{{ __('E-mail Address') }}</label>
                                        <input class="form-control" name="ship_email" type="email" id="checkout-email"
                                            value="{{ isset($user) ? $user->email : '' }}">
                                    </div>

                                </div> --}}
                                {{-- <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="checkout-city">{{ __('City') }}</label>
                                        <input class="form-control" name="ship_city" required type="text"
                                            id="checkout-city" value="{{ isset($user) ? $user->ship_city : '' }}">
                                    </div>
                                </div> --}}
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="checkout-address1">{{ __('ডেলিভারি ঠিকানা') }} </label>
                                        <input class="form-control" name="ship_address" required type="text" placeholder="ডেলিভারি ঠিকানা"
                                            id="checkout-address1" value="{{ isset($user) ? $user->ship_address1 : '' }}">
                                    </div>
                                </div>
                            </div>
                        </form>

                        <h6>{{ __('Pay with') }} :</h6>
                        <div class="row mt-4">
                            <div class="col-12">
                                <div class="payment-methods">
                                    @php
                                        $gateways = DB::table('payment_settings')->whereStatus(1)->get();
                                    @endphp
                                    @foreach ($gateways as $gateway)
                                        @if (PriceHelper::CheckDigitalPaymentGateway())
                                            @if ($gateway->unique_keyword != 'cod')
                                                <div class="single-payment-method">
                                                    <a class="text-decoration-none " href="#"
                                                        data-bs-target="#{{ $gateway->unique_keyword }}">
                                                        <img class=""
                                                            src="{{ asset('assets/images/' . $gateway->photo) }}"
                                                            alt="{{ $gateway->name }}" title="{{ $gateway->name }}">
                                                        <p>{{ $gateway->name }}</p>
                                                    </a>
                                                </div>
                                            @endif
                                        @else
                                            <div class="single-payment-method">
                                                <a class="text-decoration-none" href="#"
                                                    data-bs-target="#{{ $gateway->unique_keyword }}">
                                                    <img class=""
                                                        src="{{ asset('assets/images/' . $gateway->photo) }}"
                                                        alt="{{ $gateway->name }}" title="{{ $gateway->name }}">
                                                    <p>{{ $gateway->name }}</p>
                                                </a>
                                            </div>
                                        @endif
                                    @endforeach

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                @include('includes.checkout_modal')

            </div>
            @include('includes.checkout_sitebar', $cart)
        </div>
    </div>


    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var form = document.getElementById('checkout-form');
            var paymentMethodLinks = document.querySelectorAll('.single-payment-method');
            paymentMethodLinks.forEach(function(link) {
                link.addEventListener('click', function(event) {
                    event.preventDefault();
                    if (validateForm()) {
                        // AJAX form submission using jQuery
                        var csrfToken = form.querySelector('input[name="_token"]').value;
                        var url = form.action;

                        $.ajax({
                            url: form.action,
                            method: form.method,
                            data: $(form).serialize(), // Serialize the form using jQuery
                            headers: {
                                'X-CSRF-TOKEN': csrfToken
                            },
                            success: function(response) {
                                var targetModalId = link.firstElementChild.getAttribute(
                                    'data-bs-target');
                                if (targetModalId) {
                                    var targetModal = document.getElementById(
                                        targetModalId.substring(
                                            1));
                                    if (targetModal) {
                                        var modal = new bootstrap.Modal(targetModal);
                                        modal.show();
                                    }
                                }


                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                console.error('Error:', errorThrown);
                            }
                        });



                        // var targetModalId = link.firstElementChild.getAttribute('data-bs-target');
                        // if (targetModalId) {
                        //     var targetModal = document.getElementById(targetModalId.substring(
                        //         1)); 
                        //     if (targetModal) {
                        //         var modal = new bootstrap.Modal(targetModal);
                        //         modal.show();
                        //     }
                        // }
                    } else {
                        console.log('Form validation failed. Modal not opened.');
                    }

                });

                function validateForm() {
                    var nameInput = document.getElementById('name');
                    // var emailInput = document.getElementById('checkout-email');
                    var phoneInput = document.getElementById('checkout-phone');
                    // var cityInput = document.getElementById('checkout-city');
                    var addressInput = document.getElementById('checkout-address1');

                    var isValid = true;

                    if (nameInput.value.trim() === '') {
                        markAsError(nameInput, 'সম্পূর্ণ নাম বসান ');
                        isValid = false;
                    }
                    // if (emailInput.value.trim() === '' || !isValidEmail(emailInput.value)) {
                    //     markAsError(emailInput, 'Please enter a valid email address.');
                    //     isValid = false;
                    // }
                    if (phoneInput.value.trim() === '') {
                        markAsError(phoneInput, 'সঠিক মোবাইল নম্বর  বসান ');
                        isValid = false;
                    }
                    // if (cityInput.value.trim() === '') {
                    //     markAsError(cityInput, 'City is required.');
                    //     isValid = false;
                    // }
                    if (addressInput.value.trim() === '') {
                        markAsError(addressInput, 'ডেলিভারি ঠিকানা বসান .');
                        isValid = false;
                    }

                    return isValid;
                }

                // Function to validate email format
                function isValidEmail(email) {
                    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    return emailRegex.test(email);
                }
                // Function to mark input fields as error
                function markAsError(inputElement, errorMessage) {
                    removeErrorStyles(inputElement);
                    inputElement.style.border = '2px solid red';
                    var errorElement = document.createElement('span');
                    errorElement.textContent = errorMessage;
                    errorElement.classList.add('error-message');
                    errorElement.style.color = 'red';
                    errorElement.style.fontSize = '14px';
                    errorElement.style.display = 'block';
                    inputElement.parentNode.appendChild(errorElement);
                }

                function removeErrorStyles(inputElement) {
                    inputElement.style.border = '';
                    var errorElement = inputElement.parentNode.querySelector('.error-message');
                    if (errorElement) {
                        errorElement.remove();
                    }
                }

                var formInputs = form.querySelectorAll('input');
                formInputs.forEach(function(input) {
                    input.addEventListener('input', function() {
                        removeErrorStyles(input);
                    });
                });


            });
        });
    </script>
@endsection
