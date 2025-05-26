@extends(theme() . '.layout')


@section('content')
    <!-- Start Page Title Section -->
<div class="page-title-area item-bg1">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="page-title-content">
                    <h2>Our Projects</h2>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Projects</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title Section -->

    <!-- project-area -->
    <section class="inner-project-area pt-115 py-90">
        <div class="container">
            
            <div class="row justify-content-center">
                @foreach ($projects as $project)
                <div class="col-lg-4 col-md-6 col-sm-10">
                    <div class="project-item-two">
                        <div class="project-thumb-two">
                            <a href="{{ route('front.project.details', $project->slug) }}"><img src="{{ getPhoto($project->photo) }}" alt=""></a>
                        </div>
                        <div class="project-content-two">
                            <span>@lang('Product Design')</span>
                            <h2 class="title"><a href="{{ route('front.project.details', $project->slug) }}">{{ $project->title }}</a></h2>
                            <a href="{{ route('front.project.details', $project->slug) }}" class="link-btn"><i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- project-area-end -->
@endsection
