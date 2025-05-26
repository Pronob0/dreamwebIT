@extends(theme() . '.layout')

@section('content')
<!-- Hero-area -->

<style>
    .product-box__cont {
    padding: 15px 15px 0;
}
.product-box__cont .rating {
    margin-bottom: 12px;
}
.text--star {
    color: #facb1e;
}
.product-box__cont .title {
    padding-bottom: 15px;
    border-bottom: 1px solid var(--border-clr);
}
.product-box__cont .price-area {
    display: flex;
    align-items: center;
    font-size: 14px;
    padding: 14px 0;
}
.product-box__cont .price-area .price {
    display: flex;
    align-items: center;
    margin-right: auto;
}
.product-box__cont .cmn--btn.btn-outline {
    border-width: 1px;
    border-color: var(--border-clr);
    color: var(--title-clr);
}

</style>

<!-- Start Home Section -->
<div class="home-6 home-section" style="background: url({{ getPhoto($gs->hero_banner) }})">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-12">
                        <div class="main-banner-content">
                           
                            <h1>@lang($gs->hero_title)</h1>
                            <p>@lang($gs->hero_text)</p>
                            <div class="banner-btn">
                                <a class="default-btn-one" href="{{ route('front.service') }}">@lang('Our Service') <span></span></a>
                                <a class="default-btn-two" href="{{ route('front.contact') }}">@lang('Contact Us') <span></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Home Section -->

<!-- Start Services Three Section -->
<section class="services-section-three section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>@lang('How Can We Help You')</h2>
                </div>
            </div>
            @foreach ($servicescategory as $item)
            <div class="col-lg-4 col-md-6">
                <div class=" card card-wow">
                    <img class="overlay-serve" src="{{ getPhoto($item->image) }}" alt="">
                    <div class="inner-card">

                        <h3 class="text-white text-center text-serve" style="">{{ $item->name }}</h3>
                    </div>
                </div>

            </div>
            @endforeach

            <div class="col-lg-12 col-md-12">
                <div class="more-button-box">
                    <a class="" href="#0"> <span></span></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Services Three Section -->

<!-- Start Hire Section -->
<section class="hire-section" style="background-image:url({{ asset('assets/images/banner-bg.jpg') }})">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-12">
                <div class="hire-content">
                    <h6 class="sub-title">@lang('Want to work with us?')</h6>
                    <h2 class="mb-3">{{ $gs->want_to_header }}</h2>

                    <h6 class="text-white">
                        @php
                        echo $gs->want_to_sub;
                        @endphp

                    </h6>
                    <div class="hire-btn">
                        <a class="default-btn" href="tel:12345678">@lang('Call Now')<span></span></a>
                        <a class="default-btn-one" href="{{ route('front.contact') }}">@lang('Contact Us')<span></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Hire Section -->
A website is a crucial part of any business. It can help you:


<!-- Start Feature Two Section -->
<section class="feature-two-section pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h6 class="sub-title">@lang('Why Choose Us?')</h6>
                    <h2>@lang('Our Feature')</h2>
                </div>
            </div>
            @foreach ($features as $item)
            <div class="col-lg-4 col-md-6">
                <div class="feature-two-single-item">
                    <img src="{{ getPhoto($item->photo) }}" alt="icon">
                    <h3>{{ $item->title }}</h3>
                    <p>{{ $item->description }}</p>
                </div>
            </div>


            @endforeach

        </div>
    </div>
</section>
<!-- End Feature Two Section -->

<!-- Start Counter Section -->
<section class="counter-area section-padding" >
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-light">Why Every Small Business Needs a Website</h2>
            <p class=" fs-5 text-light">
              Boost your growth, build credibility, and connect with customers all in one place.
            </p>
            <p class=" fs-5 text-light">
                Discover the top advantages of having a professionally designed website for your small business..
              </p>
          </div>
          <div class="row g-4">
            <div class="col-md-6 col-lg-3">
              <div class="card h-100 shadow-sm border-0">
                <div class="card-body text-center">
                  <h5 class="card-title fw-semibold" style="color:#7C68ED">Boosts Visibility & Credibility</h5>
                  <p class="card-text text-muted">
                    A professional website helps new customers find you and builds trust in your brand.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="card h-100 shadow-sm border-0">
                <div class="card-body text-center">
                  <h5 class="card-title fw-semibold" style="color:#7C68ED">Connects You With Customers</h5>
                  <p class="card-text text-muted">
                    Share your story, showcase services, and engage with your audience directly.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="card h-100 shadow-sm border-0">
                <div class="card-body text-center">
                  <h5 class="card-title fw-semibold" style="color:#7C68ED">Drives More Sales</h5>
                  <p class="card-text text-muted">
                    Convert visitors into buyers with a site that works for you around the clock.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="card h-100 shadow-sm border-0">
                <div class="card-body text-center">
                  <h5 class="card-title fw-semibold" style="color:#7C68ED">Builds Your Brand Presence</h5>
                  <p class="card-text text-muted">
                    Your website reflects who you are it’s your brand’s digital home.
                  </p>
                </div>
              </div>
            </div>
          </div>

    </div>
</section>
<!-- End Counter Section -->

<div class="container pt-5">
    <div class="section-title">
        <h3>@lang("Let’s Build Something Great!")</h3>
        <h6 class="sub-title">@lang('Offering a range of web development services')</h6>
        
    </div>
</div>

<!-- Start Overview Section -->
@foreach ($feature_services as $key => $value)


<section class="overview-section py-5">
    <div class="container">
       
        <div class="row align-items-center">
            
                
            
            @if($key % 2 == 0)
            <div class="col-lg-6">
                <div class="overview-image">
                    <img src="{{ getPhoto($value->photo) }}" alt="image">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="overview-content">

                    <h2>{{ $value->title }}</h2>
                    <p>{{ $value->sort_text }}</p>
                    <ul class="features-list">
                        @php
                        $attrs = explode(',', $value->attribute);
                        @endphp
                        @foreach ($attrs as $item)
                        <li> <span>{{ $item }}</span></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            @else

            <div class="col-lg-6">
                <div class="overview-content">
                    <h2>{{ $value->title }}</h2>
                    <p>{{ $value->sort_text }}</p>
                    <ul class="features-list">
                        @php
                        $attrs = explode(',', $value->attribute);
                        @endphp
                        @foreach ($attrs as $item)
                        <li> <span>{{ $item }}</span></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="overview-image-2">
                    <img src="{{ getPhoto($value->photo) }}" alt="image">
                </div>
            </div>
            @endif
        </div>
    </div>
</section>
<!-- End Overview Section -->
@endforeach

{{-- Why need website --}}

  

<!-- Start Testimonial Section -->
<section class="testimonial-section py-5 bg-gradient-primary">
    <div class="container">
        <div class="row mb-5">
            <div class="col-12 text-center">
                <h6 class="text-uppercase text-light mb-3">@lang('Client Voices')</h6>
                <h2 class="display-4 fw-bold text-white">@lang('What Our Clients Say')</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                    <!-- Indicators -->
                    <div class="carousel-indicators">
                        @foreach ($testimonials as $key => $testimonial)
                        <button type="button" 
                                data-bs-target="#testimonialCarousel" 
                                data-bs-slide-to="{{ $key }}" 
                                class="{{ $key === 0 ? 'active' : '' }}" 
                                aria-current="{{ $key === 0 ? 'true' : 'false' }}"></button>
                        @endforeach
                    </div>

                    <!-- Slides -->
                    <div class="carousel-inner">
                        @foreach ($testimonials->chunk(3) as $chunk)
                        <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                            <div class="row g-4">
                                @foreach ($chunk as $testimonial)
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="testimonial-card card border-0 shadow-lg h-100 hover-effect">
                                        <div class="card-body p-4">
                                            <div class="quote-icon">
                                                <i class="fas fa-quote-left text-primary fa-2x"></i>
                                            </div>
                                            <div class="rating mb-3">
                                                @for($i = 0; $i < 5; $i++)
                                                <i class="fas fa-star text-warning"></i>
                                                @endfor
                                            </div>
                                            <p class="lead text-muted mb-4">{{ $testimonial->message }}</p>
                                            <div class="client-info d-flex align-items-center">
                                                <div class="client-img me-3">
                                                    <img src="{{ getPhoto($testimonial->photo) }}" 
                                                         alt="{{ $testimonial->name }}"
                                                         class="rounded-circle shadow-sm"
                                                         width="60"
                                                         height="60">
                                                </div>
                                                <div class="client-details">
                                                    <h5 class="mb-1 fw-bold text-dark">{{ $testimonial->name }}</h5>
                                                    <small class="text-muted">{{ $testimonial->designation }}</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endforeach
                    </div>

                    <!-- Controls -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">@lang('Previous')</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">@lang('Next')</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>




<!-- End Testimonial Section -->



<!-- Start Blog Section -->
<section class="blog-section bg-grey pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h6 class="sub-title">@lang('Blog & Article')</h6>
                    <h2>@lang('Recent Blog')</h2>
                </div>
            </div>
            @foreach ($blogs as $blog)
            <div class="col-lg-4 col-md-6">
                <div class="blog-single-item">
                    <div class="blog-image">
                        <a href="{{route('front.blog.details',$blog->slug)}}">
                            <img src="{{ getPhoto($blog->photo) }}" alt="image">
                        </a>
                    </div>
                    <div class="blog-description">
                        <ul class="blog-info">
                            <li>
                                <a href="{{route('front.blog.details',$blog->slug)}}"><i
                                        class="fas fa-user"></i> @lang('Admin')</a>
                            </li>
                            <li>
                                <a href="{{route('front.blog.details',$blog->slug)}}"><i
                                        class="fas fa-calendar"></i>{{ dateFormat($blog->created_at) }}</a>
                            </li>
                        </ul>
                        <div class="blog-text">
                            <h3>
                                <a href="{{route('front.blog.details',$blog->slug)}}">
                                    {{ $blog->title }}
                                </a>
                            </h3>
                            {{-- str limit blog description --}}
                            <p>{!! Str::limit($blog->description, 10) !!}</p>

                            <div class="blog-btn"> <a href="{{route('front.blog.details',$blog->slug)}}"
                                    class="read-more"><i class="fas  fa-arrow-right"></i> @lang('Read More')</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach


        </div>
    </div>
</section>
<!-- End Blog Section -->



<!-- End Contact Section -->





@endsection