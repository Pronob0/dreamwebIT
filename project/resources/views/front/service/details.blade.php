@extends(theme() . '.layout')

@section('content')

<div class="page-title-area item-bg1" style="background-image:url({{ getPhoto($gs->breadcumb) }})">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="page-title-content">
                    <h2>@lang('Services Details')</h2>
                    <ul>
                        <li><a href="index.html">@lang('Home')</a></li>
                        <li>{{ $service->title }}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start Services Details Section -->
<section class="services-details-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="services-details-content">
                    <div class="services-details-image">
                        <img src="{{ getPhoto($service->photo) }}" alt="image">
                    </div>
                    
                    <h3>{{ $service->title }}</h3>
                    
                    <div class="features-text">

                        <p>
                            @php
                                echo $service->sort_text;
                            @endphp
                        </p>
                        <p>
                            @php
                                echo $service->description;
                            @endphp
                        </p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <aside class="services-widget">
                    <section class="widget widget_categories">
                        <h3 class="widget-title">@lang('Our Services')</h3>
                        <ul>
                            @php
                                $attributes = explode(',', $service->attribute);
                            @endphp

                            @foreach ($attributes as $item)
                            <li> <a href="#">{{ $item }}</a></li>
                            @endforeach
                        </ul>
                    </section>
                    <section class="widget widget_download_btn">
                        <h3 class="widget-title">Share With</h3>
                        <div class="download-btn-box">
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ route('front.service.details', $service->slug) }}" class="facebook-btn">
                                <i class="fab fa-facebook-f"></i>
                                Facebook
                            </a>
                            <a href="https://twitter.com/intent/tweet?url={{ route('front.service.details', $service->slug) }}&text=Check%20out%20this%20website" class="twitter-btn">
                                <i class="fab fa-twitter"></i>
                                Twitter
                            </a>
                            <a href="https://linkedin.com" class="linkedin-btn">
                                <i class="fab fa-linkedin-in"></i>
                                Linkedin
                            </a>
                            <a href="instagram://library?AssetPath={{ getPhoto($service->photo) }}&InstagramCaption=Best Webdesign Service" class="instagram-btn">
                                <i class="fab fa-instagram"></i>
                                Instagram
                            </a>
                        </div>
                    </section>
                </aside>
            </div>
        </div>
    </div>
</section>

<!-- Start Faq Section -->
<section class="faq-section section-padding">
    <div class="container">
        <div class="head-title text-center mb-4" style="width: 50%; margin:0 auto">
            <h2>Frequently Asked Questions</h2>
            <p>Here are some of the most frequently asked questions about our services. If you have any other questions, please feel free to contact us.</p>
        </div>
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="faq-accordion first-faq-box">
                    <ul class="accordion">
                        @foreach ($service->faqs as $faq)
                        <li class="accordion-item">
                            <a class="accordion-title {{ $loop->first ?  'active' : '' }}" href="javascript:void(0)"> <i class="fa fa-plus"></i> {{ $faq->title }}</a>
                            <p class="accordion-content show">{{ $faq->content }}</p>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Faq Section -->
    
@endsection
