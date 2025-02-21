@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Shipping Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0 "><b>{{ __('Update Shipping') }}</b> </h3>

                <a class="btn btn-primary btn-sm" href="{{route('back.shipping.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
                </div>
        </div>
    </div>

	<!-- Form -->
	<div class="row">

		<div class="col-xl-12 col-lg-12 col-md-12">

			<div class="card o-hidden border-0 shadow-lg">
				<div class="card-body ">
					<!-- Nested Row within Card Body -->
					<div class="row justify-content-center">
						<div class="col-lg-12">
								<form class="admin-form" action="{{ route('back.shipping.update',$shipping->id) }}"
									method="POST" enctype="multipart/form-data">

                                    @csrf

                                    @method('PUT')

									@include('alerts.alerts')

									<div class="form-group">
										<label for="title">{{ __('Title') }} *</label>
										<input type="text" name="title" class="form-control" id="title"
											placeholder="{{ __('Enter Title') }}" value="{{ $shipping->title }}" >
									</div>

									@if ($shipping->id ==1)
									<div class="form-group">
                                        <label for="price">{{ __('Minimum Order Amount') }} *</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span
                                                    class="input-group-text">{{ PriceHelper::adminCurrency() }}</span>
                                            </div>
                                            <input type="text" id="price"
                                                name="minimum_price" class="form-control"
                                                placeholder="{{ __('Enter Price') }}"
                                                value="{{ PriceHelper::setPrice($shipping->minimum_price) }}" >
                                        </div>
										<label for="is_condition" class="text-left">
											<input type="checkbox" name="is_condition" {{$shipping->is_condition == 1 ? 'checked' : ''}} class="my-2" id="is_condition">
										{{__('Condition Free Shipping')}}
										</label>
                                    </div>
									@else
									<div class="form-group">
                                        <label for="price">{{ __('Shipping Cost') }} *</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span
                                                    class="input-group-text">{{ PriceHelper::adminCurrency() }}</span>
                                            </div>
											<input type="text" id="price" name="price" class="form-control"
											placeholder="{{ __('Enter Price') }}" value="{{ $shipping->price }}">
                                        </div>
                                    </div>
									@endif
                                  

								

									<div class="form-group">
										<button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
									</div>


									<div>
								</form>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>

@endsection
