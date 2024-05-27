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
                            <ul class="social-icon-list">
                                @foreach (DB::table('social_links')->get() as $social)
                                <li><a href="{{ $social->link }}"><i class="{{ $social->icon }}"></i></a></li>
                                @endforeach

                            </ul>
                            <h1>{{ $gs->hero_title }}</h1>
                            <p>{{ $gs->hero_text }}</p>
                            <div class="banner-btn">
                                <a class="default-btn-one" href="services.html">@lang('Our Service') <span></span></a>
                                <a class="default-btn-two" href="contact.html">@lang('Contact Us') <span></span></a>
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
                        <a class="default-btn" href="tel:12345678">Call Now<span></span></a>
                        <a class="default-btn-one" href="contact.html">Contact Us<span></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Hire Section -->


<!-- Start Feature Two Section -->
<section class="feature-two-section pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h6 class="sub-title">Why Choose Us?</h6>
                    <h2>Our Feature</h2>
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
<section class="counter-area section-padding">
    <div class="container">
        <div class="row">
            @foreach ($counters as $counter)
            <div class="col-lg-3 col-md-6 counter-item">
                <div class="single-counter">
                    <div class="counter-contents">
                        <h2>
                            <span class="counter-number">{{ $counter->counter_number }}</span>
                            <span>+</span>
                        </h2>
                        <h3 class="counter-heading">{{ $counter->title }}</h3>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</section>
<!-- End Counter Section -->


<!-- Start Overview Section -->
@foreach ($feature_services as $key => $value)


<section class="overview-section section-padding">
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


<!-- Start Testimonial Section -->
<section class="testimonial-section pt-100 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h6 class="sub-title">@lang('Our Testimonial')</h6>
                    <h2>@lang('Client Feedback')</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12">
                <div class="testimonial-slider owl-carousel owl-theme">
                    <!-- testimonials item -->

                    @foreach ($testimonials as $testimonial)
                    <div class="single-testimonial">
                        <div class="rating-box">
                            <ul>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="testimonial-content">
                            <p>{{ $testimonial->message }}</p>
                        </div>
                        <div class="avatar">
                            <img src="{{ getPhoto($testimonial->photo) }}" alt="testimonial images">
                        </div>
                        <div class="testimonial-bio">
                            <div class="bio-info">
                                <h3>{{ $testimonial->name }}</h3>
                                <span>{{ $testimonial->designation }}</span>
                            </div>
                        </div>
                    </div>
                    @endforeach


                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Testimonial Section -->

{{-- project section start here  --}}
<section class="project-section section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h6 class="sub-title">@lang('Our Project')</h6>
                    <h2>@lang('Recent Project')</h2>
                </div>
            </div>
            @foreach ($projects as $project)


            <div class="col-md-6 col-xl-4">
                <div class="product-box" style="border-radius: 15px; background:#fff">
                    <div class="product-box__img" style="border-radius: 15px; background:#fff">
                        <a href="https://geniusocean.com/product/genius-hyip-all-in-one-investment-platform" class="d-block">
                            <img style="border-radius: 15px; width:100%; transition: all ease 0.3s" src="https://geniusocean.com/assets/images/13463353661658310098.jpg" alt="products">
                        </a>
                    </div>

                    <div class="product-box__cont">
                        <div class="rating d-flex align-items-center">
                            <div class="text--star me-1"><i class="fas fa-star"></i> 4.7</div> (70)
                        </div>
                        <h5 class="title">
                            <a href="https://geniusocean.com/product/genius-hyip-all-in-one-investment-platform">Genius HYIP - All in One Investment Platform</a>
                        </h5>
                        <div class="price-area">
                            <div class="price">
                                <span class="me-2">Starting at</span>
                                <h4 class="amount">$49</h4>
                            </div>
                            <a href="https://codecanyon.net/item/genius-hyip-all-in-one-investment-platform/37317769?s_rank=1" class="cmn--btn btn-outline">Live Review</a>
                        </div>
                    </div>

                </div>
            </div>


            @endforeach

        </div>
    </div>
</section>

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