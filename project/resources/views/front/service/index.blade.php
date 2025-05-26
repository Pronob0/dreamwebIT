@extends(theme() . '.layout')
@section('content')

<!-- Start Page Title Section -->
<div class="page-title-area item-bg1" style="background-image:url({{ getPhoto($gs->breadcumb) }})">
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
<section class="services-section py-5">
    <div class="container">
        <div class="row g-4">
            @foreach ($services as $item)
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
                <div class="card h-100 shadow-sm border-0">
                    <div class="service-image overflow-hidden" style="height: 200px;">
                        <img src="{{ getPhoto($item->photo) }}" 
                             class="img-fluid w-100 h-100 object-fit-cover" 
                             alt="{{ $item->title }}">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title mb-3">{{ $item->title }}</h5>
                        <p class="card-text text-secondary mb-4">
                            {{ Str::limit($item->sort_text, 115, '...') }}
                        </p>
                        <div class="mt-auto">
                            <a href="{{ route('front.service.details', $item->slug) }}" 
                               class="btn btn-link text-decoration-none text-primary p-0">
                                Read More <i class="fas fa-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<style>
.service-card {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.service-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0,0,0,0.12);
}

.object-fit-cover {
    object-fit: cover;
    object-position: center;
}
</style>

@endsection