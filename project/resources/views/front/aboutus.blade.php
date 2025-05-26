@extends(theme() . 'layout')

@section('content')
<div class="page-title-area item-bg1" style="background-image:url({{ getPhoto($gs->breadcumb) }})">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="page-title-content">
                    <h2>About Us</h2>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start About Section -->
<section class="about-area section-padding">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-12">
                <div class="about-content">
                    <h6 class="sub-title">{{ $about->header_title }}</h6> 
                    <h2>{{ $about->title }}</h2>
                    <p>{{ $about->description }}</p>
                    <div class="overview-content">
                        <ul class="features-list">
                            @php
                                $lists = explode(',', $about->experiencelist);
                            @endphp
                            @foreach ($lists as $item)
                            <li> <span>{{ $item }}</span></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="about-btn-box"> 
                        <a class="default-btn" href="about.html">Learn More <span></span></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="about-image">
                    <img src="{{ getPhoto($about->photo) }}" alt="About image">
                    
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End About Section -->

<!-- Start Works Process Section -->
<section class="workprocess-section bg-grey section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h6 class="sub-title">4 Step Work Process</h6>
                    <h2>Working Process</h2>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="workprocess-single-item">
                    <div class="workprocess-icon-box">
                        <img src="{{ asset('assets/images/icon/workprocess-icon-1.svg') }}" alt="icon">
                    </div>
                    <div class="workprocess-info">
                        <h3>Discover</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="workprocess-single-item">
                    <div class="workprocess-icon-box">
                        <img src="{{ asset('assets/images/icon/workprocess-icon-2.svg') }}" alt="icon">
                    </div>
                    <div class="workprocess-info">
                        <h3>Design & Development</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="workprocess-single-item">
                    <div class="workprocess-icon-box">
                        <img src="{{ asset('assets/images/icon/workprocess-icon-3.svg') }}" alt="icon">
                    </div>
                    <div class="workprocess-info">
                        <h3>Install & Testing</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>
                    </div>
                  
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="workprocess-single-item">
                    <div class="workprocess-icon-box">
                        <img src="{{ asset('assets/images/icon/workprocess-icon-4.svg') }}" alt="icon">
                    </div>
                    <div class="workprocess-info">
                        <h3>Project Delivery</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Works Process Section -->

<!-- Start Hire Section -->
<section class="hire-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-12">
                <div class="hire-content">
                    <h6 class="sub-title">Want to work with us?</h6>
                    <h2>Digitally Transform & Grow Your Business</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud consectetur voluptatem accusantium doloremque adipiscing elit.</p>
                    <div class="hire-btn">
                        <a class="default-btn" href="tel:12345678">Call Now<span></span></a>
                        <a class="default-btn-one" href="contact.html">Contact Us<span></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Hire Section -->

    <!-- about-area -->
{{-- <section class="about-area pt-120 pb-90">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-7 col-lg-6 order-0 order-lg-2">
                <div class="about-img-wrap">
                    <img src="{{ getPhoto($about->photo) }}" alt="" class="wow fadeInRight" data-wow-delay=".4s">
                    <img src="{{ getPhoto($about->second_photo) }}" alt="" class="wow fadeInRight" data-wow-delay=".2s">
                    <div class="about-experiences-wrap">
                        <div class="experiences-item">
                            <div class="icon">
                                <img src="{{ asset('assets/icon/about1.png') }}" alt="">
                            </div>
                            <div class="content">
                                <h6 class="title">We have more than {{ $about->experience }} years of experiences</h6>
                            </div>
                        </div>
                        <div class="experiences-item">
                            <div class="icon">
                                <img src="{{ asset('assets/icon/about2.png') }}" alt="">
                            </div>
                            <div class="content">
                                <h6 class="title">@lang('We use professional and experienced person')</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 col-lg-6">
                <div class="about-content">
                    <div class="section-title mb-25 tg-heading-subheading animation-style3">
                        <span class="sub-title tg-element-title">{{ $about->header_title }}</span>
                        <h2 class="title tg-element-title">{{ $about->title }}</h2>
                    </div>
                    <p>
                        @php
                            echo $about->description;
                        @endphp
                    </p>
                    <div class="about-list">
                        <ul class="list-wrap">
                            @php
                                $lists = explode(',', $about->experiencelist);
                            @endphp
                            @foreach ($lists as $item)
                            <li><i class="fas fa-check"></i>{{ $item }}</li>
                            @endforeach
                            
                            
                        </ul>
                    </div>
                    <a href="{{ route('front.about') }}" class="btn">@lang('Learn More')</a>
                </div>
            </div>
        </div>
    </div>
</section> --}}
<!-- about-area-end -->
@endsection
