@extends(theme(). 'layout')


@section('content')
     <!-- Start Page Title Section -->
<div class="page-title-area item-bg1" style="background-image:url({{ getPhoto($gs->breadcumb) }})">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="page-title-content">
                    <h2>@lang('Blog Details')</h2>
                    <ul>
                        <li><a href="index.html">@lang('Home')</a></li>
                        <li>@lang('Blog Details')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title Section -->

   <!-- blog-details-area -->
   <section class="blog-details-area mt-5 pb-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card p-4">
                    <div class="blog-details-wrap">
                        <div class="blog-details-thumb">
                            <img class="w-100" src="{{getPhoto($blog->photo)}}" alt="">
                        </div>
                        <div class="mb-3">
                            <div class="blog-description">
                                <ul class="blog-info my-3">
                                    <li>
                                        <a href="#"><i class="fas fa-user"></i> @lang('Admin')</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fas fa-calendar"></i>{{ dateFormat($blog->created_at) }}</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fas fa-eye"></i>{{ $blog->views }}</a>
                                    </li>
                                </ul>
                            </div>
                            <h2 class="title">@lang($blog->title)</h2>
                            <p>
                                @lang($blog->description)
                            </p>
    
                            <div class="blog-details-bottom">
                                <div class="row align-items-center">
                                    <div class="col-lg-8">
                                        <div class="post-tags">
                                            <h5 class="title">@lang('Tags:')</h5>
                                            <ul class="list-wrap d-flex">
                                                @foreach (explode(',', $blog->tags ) as $item)
                                                <li> <span class="badge badge-success"> <a href="{{  route('front.blog') . '?tag=' . $item  }}">{{ $item }}, </a> </span></li>
                                                    
                                                @endforeach
                                                
                                            
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="">
                                            <h5 class="title">@lang('Share:')</h5>
                                            <ul class="list-wrap a2a_kit a2a_kit_size_32 a2a_default_style">
                                                <li><a class="a2a_dd" href="https://www.addtoany.com/share"></a></li>
                                                <li><a class="a2a_button_facebook"></a></li>
                                                <li><a class="a2a_button_twitter"></a></li>
                                                <li><a class="a2a_button_email"></a></li>
                                            </ul>
                                            <script async src="https://static.addtoany.com/menu/page.js"></script>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @if($gs->is_disqus == 1)
                        <div id="disqus_thread"></div>
                        <script>
                            (function() { // DON'T EDIT BELOW THIS LINE
                            var d = document, s = d.createElement('script');
                            s.src = 'https://baythub-com-1.disqus.com/embed.js';
                            s.setAttribute('data-timestamp', +new Date());
                            (d.head || d.body).appendChild(s);
                            })();
                        </script>
                        
                        @endif
                    </div>
                </div>
               
            </div>
            <div class="col-xl-4 col-lg-6 col-md-10">
                <aside class="blog-sidebar">
                    <!-- Search Widget -->
                    <div class="card mb-4">
                        <div class="card-body">
                            <h4 class="card-title mb-3">@lang('Search')</h4>
                            <form class="input-group" action="{{ route('front.blog') }}">
                                <input type="text" class="form-control" name="search" placeholder="Search">
                                <button class="btn btn-outline-secondary" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </form>
                        </div>
                    </div>
            
                    <!-- Categories Widget -->
                    <div class="card mb-4">
                        <div class="card-body">
                            <h4 class="card-title mb-3">@lang('Categories')</h4>
                            <div class="list-group">
                                @foreach ($categories as $category)
                                <a href="{{ route('front.blog') . '?category=' . $category->slug }}" 
                                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">
                                    @lang($category->name)
                                    <span style="background:#7b68ee" class="badge rounded-pill">{{ $category->blogs->count() }}</span>
                                </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
            
                    <!-- Recent Posts Widget -->
                    <div class="card mb-4">
                        <div class="card-body">
                            <h4 class="card-title mb-3">@lang('Recent News')</h4>
                            <div class="list-group">
                                @foreach (DB::table('blogs')->orderBy('id', 'desc')->take(3)->get() as $rblog)
                                <div class="d-flex w-100 mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="{{ getPhoto($rblog->photo) }}" 
                                             class="img-fluid rounded-start" 
                                             alt="..." 
                                             style="width: 80px; height: 60px; object-fit: cover;">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mt-0 mb-1">
                                            <a href="{{ route('front.blog.details', $blog->slug) }}" 
                                               class="text-decoration-none text-dark">
                                                @lang($blog->title)  
                                            </a>
                                        </h6>
                                        <small class="text-muted">
                                            <i class="fas fa-calendar-alt me-1"></i>{{ dateFormat($blog->created_at) }}
                                        </small>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
            
                    <!-- Tags Widget -->
                    <div class="card mb-4">
                        <div class="card-body">
                            <h4 class="card-title mb-3">@lang('Popular Tags')</h4>
                            <div class="d-flex flex-wrap gap-2">
                                @foreach ($tags as $tag=>$value)
                                
                                @if(!empty($value))
                                <a href="{{ route('front.blog') . '?tag=' . $value }}" 
                                   class="btn btn-sm btn-outline-secondary rounded-pill">
                                    {{ $value }}
                                </a>
                                @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</section>
<!-- blog-details-area-end -->
@endsection
