@extends(theme() . 'layout')

@section('content')


<!-- Start Page Title Section -->
<div class="page-title-area item-bg1" style="background-image:url({{ getPhoto($gs->breadcumb) }})">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="page-title-content">
                    <h2>@lang('Blogs')</h2>
                    <ul>
                        <li><a href="index.html">@lang('Home')</a></li>
                        <li>@lang('Blogs')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title Section -->

<!-- Start Blog Section -->
<section class="blog-section section-padding">
    <div class="container">
        <div class="row">

            @forelse ($blogs as $blog)
            <div class="col-lg-4 col-md-6">
                <div class="blog-single-item">
                    <div class="blog-image">
                        <a href="{{ route('front.blog.details', $blog->slug) }}">
                            <img src="{{ getPhoto($blog->photo) }}" alt="image">
                        </a>
                    </div>
                    <div class="blog-description">
                        <ul class="blog-info">
                            <li>
                                <a href="#"><i class="fas fa-user"></i> @lang('Admin')</a>
                            </li>
                            <li>
                                <a href="#"><i class="fas fa-calendar"></i>{{ dateFormat($blog->created_at) }}</a>
                            </li>
                        </ul>
                        <div class="blog-text">
                            <h3>
                                <a href="{{ route('front.blog.details', $blog->slug) }}">
                                    @lang($blog->title)
                                </a>
                            </h3>
                            <p>
                                @php
                                    echo substr($blog->details, 0, 100);
                                @endphp
                            </p>
                            <div class="blog-btn"> <a href="{{ route('front.blog.details', $blog->slug) }}" class="read-more"><i class="fas fa-arrow-right"></i> @lang('Read More')</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            
            {{ $blogs->links('front.blog.paginate') }}

        </div>
    </div>
</section>
<!-- End Blog Section -->
    
@endsection
