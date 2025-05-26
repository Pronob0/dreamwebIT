@extends(theme() . '.layout')
@section('content')
    <!-- breadcrumb-area -->
    <div class="page-title-area item-bg1" style="background-image:url({{ getPhoto($gs->breadcumb) }})">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <div class="page-title-content">
                        <h2>Contact US</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li>Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area-end -->

    <!-- Start Contact Section -->
	<div class="contact-section section-padding" style="background:url({{ getPhoto($contact->photo) }})">
		<div class="container">
			<div class="section-title">
                <h2>{{ $contact->title }}</h2>
				<h6 class="sub-title">@lang('Send us a message and we will respond as soon as possible')</h6>
			</div>
			<div class="row align-items-center">
				<div class="col-lg-10 offset-lg-1">
					<div class="contact-form">
						
						<form id="contact-form" class="form" action="{{ route('front.contact.submit') }}" method="POST">
                            @csrf
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input  id="firstName" name="name" type="text" placeholder="{{ __('First Name') }}*" class="form-control">
                                        @error('name')
                                                <span class="text-danger">{{ $message }}</span>
                                        @enderror
									</div>
								</div>
                                <div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input id="lastName" name="lastname" type="text" placeholder="{{ __('Last Name') }}*" class="form-control">
                                        
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
                                        <input id="email" type="email" name="email" placeholder="{{ __('Email Address') }}*" class="form-control">
                                        @error('email')
                                                <span class="text-danger">{{ $message }}</span>
                                        @enderror
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input name="phone" id="phone" type="text" placeholder="{{ __('Phone Number') }}*" class="form-control">
                                        @error('phone')
                                                <span class="text-danger">{{ $message }}</span>
                                        @enderror
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<input id="subject" name="subject" type="text" placeholder="{{ __('Subject') }}" class="form-control">
                                        @error('subject')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<textarea id="message" name="message" placeholder="{{ __('Your Message here') }}" class="form-control"></textarea>
                                        @error('message')
                                                <span class="text-danger">{{ $message }}</span>
                                        @enderror
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<button type="submit" class="default-btn submit-btn">Send Message <span></span></button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

        <div class="container">
            <div class="row py-5">
                <div class="col-lg-6 col-md-6">
                    <div class="contact-info-content">
                        <h5>Bangladesh Headquarter</h5>
                        
                        <a href="tel:{{ $contact->phone1 }}">{{ $contact->phone1 }}</a>
                        <a href="mailto:{{ $contact->email1 }}">{{ $contact->email1 }}</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact-info-content">
                        <h5>Austria Office</h5>
                        
                        <a href="tel:{{ $contact->phone2 }}">{{ $contact->phone2 }}</a>
                        <a href="mailto:{{ $contact->email2 }}">{{ $contact->email2 }}</a>
                    </div>
                </div>
    
            </div>

        </div>
        
	</div>
	<!-- End Contact Section -->


    
@endsection
