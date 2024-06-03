     <!-- Modal Cash on Transfer-->
     <div class="modal fade" id="cod" tabindex="-1"  aria-hidden="true">
      <div class="modal-dialog" >
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title">{{__('Transaction Cash On Delivery')}}</h6>
            <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <form action="{{route('front.checkout.submit')}}" method="POST">
            @csrf
            <input type="hidden" name="payment_method" value="Cash On Delivery" id="">
            <input type="hidden" name="state_id" value="{{auth()->check() && auth()->user()->state_id ? auth()->user()->state_id : ''}}" class="state_id_setup">
            <div class="card-body">
              <p>{{PriceHelper::GatewayText('cod')}}</p>
            </div>
          <div class="modal-footer">
            <button class="btn btn-primary btn-sm" type="button" data-bs-dismiss="modal"><span>{{ __('Cancel') }}</span></button>
            <button class="btn btn-primary btn-sm" type="submit"><span>{{__('Cash On Delivery')}}</span></button>
          </form>
          </div>
        </div>
      </div>
    </div>
   
    

    {{-- SSL COMMERZ --}}
    <div class="modal fade" id="sslcommerz" tabindex="-1"  aria-hidden="true">
      <form class="interactive-credit-card row" action="{{route('front.sslcommerz.submit')}}" method="POST">
          @csrf
      <div class="modal-dialog" >
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title">{{__('Transactions via SSLCommerz')}}</h6>
            <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <div class="card-body">
              <p>{{PriceHelper::GatewayText('sslcommerz')}}</p>
              </div>
          </div>
          <input type="hidden" name="payment_method" value="SSLCommerz">
          <input type="hidden" name="state_id" value="{{auth()->check() && auth()->user()->state_id ? auth()->user()->state_id : ''}}" class="state_id_setup">
          <div class="modal-footer">
            <button class="btn btn-primary btn-sm" type="button" data-bs-dismiss="modal"><span>{{ __('Cancel') }}</span></button>
            <button class="btn btn-primary btn-sm" type="submit"><span>{{__('Checkout With SSLCommerz')}}</span></button>
          </div>
        </div>

      </div>
  </form>
    </div>







@php
    $paymentData = App\Models\PaymentSetting::where('unique_keyword','mercadopago')->first();
    $paydata = $paymentData->convertJsonData();
@endphp

@if ($paymentData->status == 1)
{{-- MERCADOPAGO --}}
  <div class="modal fade" id="mercadopago" tabindex="-1"  aria-hidden="true">
    <form class="interactive-credit-card row" id="mercadopagofrom" action="{{route('front.mercadopago.submit')}}" method="POST">
        @csrf
    <div class="modal-dialog" >
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title">{{__('Transactions via Mercadapago')}}</h6>
          <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body">
          <div class="card-body">
          

            <div class="col-lg-12 form-group">
              <div id="cardNumber"></div>
            </div>
            <div class="col-lg-12 form-group">
              <div id="securityCode"> </div>
            </div>

            <div id="expirationDate"></div>

            <div class="col-lg-12 form-group">
              <input class="form-control" type="text" id="cardholderName" data-checkout="cardholderName" placeholder="{{ __('Card Holder Name') }}" required />
            </div>
            <div class="col-lg-12 form-group">
              <input class="form-control" type="text" id="docNumber" data-checkout="docNumber" placeholder="{{ __('Document Number') }}" required />
            </div>
            <div class="col-lg-12 form-group">
                <label for="docType" class="col-lg-3 pl-0" id="dc-label">{{ __('Document type') }}</label>
                <select id="docType"  class="form-control" name="docType" data-checkout="docType"></select>
            </div>

            <p>{{PriceHelper::GatewayText('mercadopago')}}</p>
            </div>
        </div>
        <input type="hidden" name="payment_method" value="Mercadopago">
        <input type="hidden" name="state_id" value="{{auth()->check() && auth()->user()->state_id ? auth()->user()->state_id : ''}}" class="state_id_setup">
        <div class="modal-footer">
          <button class="btn btn-primary btn-sm" type="button" data-bs-dismiss="modal"><span>{{ __('Cancel') }}</span></button>
          <button class="btn btn-primary btn-sm" type="submit"><span>{{__('Checkout With Mercadopago')}}</span></button>
        </div>
      </div>

    </div>
    <input type="hidden" id="installments" value="1"/>
    <input type="hidden" name="amount" id="transactionAmount"/>
    <input type="hidden" name="description"/>
    <input type="hidden" name="paymentMethodId" />
    </form>
    <script src="https://sdk.mercadopago.com/js/v2"></script>
    <script>
      const mp = new MercadoPago("{{$paydata['public_key']}}");

        const cardNumberElement = mp.fields.create('cardNumber', {
        placeholder: "Card Number"
      }).mount('cardNumber');

      const expirationDateElement = mp.fields.create('expirationDate', {
        placeholder: "MM/YY",
      }).mount('expirationDate');

      const securityCodeElement = mp.fields.create('securityCode', {
        placeholder: "Security Code"
      }).mount('securityCode');

    
      (async function getIdentificationTypes() {
        try {
          const identificationTypes = await mp.getIdentificationTypes();

          const identificationTypeElement = document.getElementById('docType');

          createSelectOptions(identificationTypeElement, identificationTypes);

        } catch (e) {
          return console.error('Error getting identificationTypes: ', e);
        }
      })();

        function createSelectOptions(elem, options, labelsAndKeys = { label: "name", value: "id" }) {

        const { label, value } = labelsAndKeys;

        //heem.options.length = 0;

        const tempOptions = document.createDocumentFragment();

        options.forEach(option => {
          const optValue = option[value];
          const optLabel = option[label];

          const opt = document.createElement('option');
          opt.value = optValue;
          opt.textContent = optLabel;


          tempOptions.appendChild(opt);
        });

        elem.appendChild(tempOptions);
      }
          cardNumberElement.on('binChange', getPaymentMethods);
            async function getPaymentMethods(data) {
              const { bin } = data
              const { results } = await mp.getPaymentMethods({ bin });
              console.log(results);
              return results[0];
          }

          async function getIssuers(paymentMethodId, bin) {
            const issuears = await mp.getIssuers({paymentMethodId, bin });
            console.log(issuers)
            return issuers;
          };

          async function getInstallments(paymentMethodId, bin) {
          const installments = await mp.getInstallments({
              amount: document.getElementById('transactionAmount').value,
              bin,
              paymentTypeId: 'credit_card'
          });
          
      };

      async function createCardToken(){
          const token = await mp.fields.createCardToken({
              cardholderName,
              identificationType,
              identificationNumber,
          });
          
      }
      doSubmit = false;
      document.getElementById('mercadopagofrom').addEventListener('submit', getCardToken);

        async function getCardToken(event) {
            event.preventDefault();
            if (!doSubmit) {
                let $form = document.getElementById('mercadopagofrom');
                const token = await mp.fields.createCardToken({
                    cardholderName: document.getElementById('cardholderName').value,
                    identificationType: document.getElementById('docType').value,
                    identificationNumber: document.getElementById('docNumber').value,
                })
                setCardTokenAndPay(token.id)
            }
        };

        function setCardTokenAndPay(token) {
            let form = document.getElementById('mercadopagofrom');
            let card = document.createElement('input');
            card.setAttribute('name', 'token');
            card.setAttribute('type', 'hidden');
            card.setAttribute('value', token);
            form.appendChild(card);
            doSubmit = true;
            form.submit();
        };
    </script>

  
  </div>
@endif


{{-- Paystack --}}
<div class="modal fade" id="paystack" tabindex="-1"  aria-hidden="true">

  <form class="interactive-credit-card row" action="{{route('front.checkout.submit')}}" method="POST" id="paystack_form">
    @csrf
    <input type="hidden" name="ref_id" id="ref_id" value="">
      <div class="modal-dialog" >
          <div class="modal-content">
              <div class="modal-header">
                  <h6 class="modal-title">{{__('Transactions via Paystack')}}</h6>
                  <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                  <div class="card-body">
                  <p>{{PriceHelper::GatewayText('paystack')}}</p>
                  </div>
              </div>
              <input type="hidden" name="payment_method" value="Paystack">
              <input type="hidden" name="state_id" value="{{auth()->check() && auth()->user()->state_id ? auth()->user()->state_id : ''}}" class="state_id_setup">
              <div class="modal-footer">
                  <button class="btn btn-primary btn-sm" type="button" data-bs-dismiss="modal"><span>{{ __('Cancel') }}</span></button>
                  <button class="btn btn-primary btn-sm final-btn" id="final-btn" type="submit"><span>{{__('Checkout With Paystack')}}</span></button>
              </div>
          </div>
      </div>
  </form>


@php
$data = App\Models\PaymentSetting::whereUniqueKeyword('paystack')->first();
$paydata = $data->convertJsonData();
$billing = Session::get('billing_address');
@endphp
@section('script')
<script src="https://js.paystack.co/v1/inline.js"></script>
{{-- <script>
  let email = $('#checkout_email_billing').val();
  $(document).on('submit','#paystack_form',function(e){
    e.preventDefault();
      var total = {{PriceHelper::cartTotal(Session::get('cart'))}};
          total = Math.round(total);

          var handler = PaystackPop.setup({
            key: '{{$paydata['key']}}',
            email: '{{isset($user) ? $user->email : $billing['bill_email']}}',
            amount: '{{round($grand_total * PriceHelper::setCurrencyValue(),2)}}' * 100,
            currency: '{{PriceHelper::setCurrencyName()}}',
            ref: ''+Math.floor((Math.random() * 1000000000) + 1),
            callback: function(response){
              $('#ref_id').val(response.reference);
              $('#paystack_form').removeAttr('id');
              $('.final-btn').click();
            },
            onClose: function(){
              window.location.reload();
            }
          });
          handler.openIframe();
              return false;
  });
</script> --}}

@endsection
</div>




  <!-- Modal bank -->
  {{-- <div class="modal fade" id="bank" tabindex="-1"  aria-hidden="true">
      <div class="modal-dialog" >
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title">{{ __('Transactions via Bank Transfer') }}</h6>
            <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <form action="{{route('front.checkout.submit')}}" method="POST">
          <div class="modal-body">
            <div class="col-lg-12 form-group">
              <label for="transaction">{{ __('Transaction Number') }}</label>
              <input class="form-control" name="txn_id" id="transaction" placeholder="{{__('Enter Your Transaction Number')}}" required />
          </div>
            <p>{!!PriceHelper::GatewayText('bank')!!}</p>
          </div>
          <div class="modal-footer">

              @csrf
              <input type="hidden" name="payment_method" value="Bank">
              <input type="hidden" name="state_id" value="{{auth()->check() && auth()->user()->state_id ? auth()->user()->state_id : ''}}" class="state_id_setup">
            <button class="btn btn-primary btn-sm" type="button" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
            <button class="btn btn-primary btn-sm" type="submit"><span>{{ __('Checkout With Bank Transfer') }}</span></button>
          </form>
          </div>
        </div>
      </div>
    </div> --}}