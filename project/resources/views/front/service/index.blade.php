@extends(theme() . '.layout')
@section('content')

<!-- Start Page Title Section -->
<div class="page-title-area item-bg1">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="page-title-content">
                    <h2>Services</h2>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Services</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title Section -->
<section class="services-section-two section-padding">
    <div class="container">
        <div class="section-title">
            <h2>Our Services</h2>
            <p>Our services are designed to help you achieve your goals. We work with you to create a strategy that will
                help you achieve your goals.</p>
        </div>
        <div class="row">
            @foreach ($services as $item)
            <div class="col-md-3">
                <div class="card">
                    <div class="service-image">
                        <img src="{{ getPhoto($item->photo) }}" alt="">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title
                        ">{{ $item->title }}</h5>
                        <p class="card-text text-justify">{{ $item->sort_text }}</p>
                        <a href="{{ route('front.service.details', $item->slug) }}" class="readmore">Read More</a>
                    </div>
                </div>
            </div>
            @endforeach
           

             {{ $services->links() }}

        </div>
    </div>
</section>

@endsection