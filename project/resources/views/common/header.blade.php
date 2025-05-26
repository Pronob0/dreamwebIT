<!-- Start Navbar Section -->
<div class="navbar-section">
    <div class="techvio-responsive-nav">
        <div class="container">
            <div class="techvio-responsive-menu">
                <div class="logo">
                    <a href="{{ route('front.index') }}">
                        <img height="75px" src="{{ getPhoto($gs->header_logo) }}" class="white-logo" alt="logo">
                        <img height="75px" src="{{ getPhoto($gs->footer_logo) }}" class="black-logo" alt="logo">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="techvio-nav">
        <div class="container">
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="index.html">
                    <img src="{{ getPhoto($gs->header_logo) }}" 
                         class="logo-img white-logo" 
                         alt="logo">
                    <img src="{{ getPhoto($gs->footer_logo) }}" 
                         class="logo-img black-logo" 
                         alt="logo">
                </a>
                
                <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item"> 
                            <a href="{{ route('front.index') }}" class="nav-link">@lang('Home') </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('front.service') }}" class="nav-link">@lang('Services') <i class="fas fa-chevron-down"></i></a>

                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a href="{{ route('front.service') }}" class="nav-link">@lang('All Services')</a>
                                </li>
                                @foreach ($services as $navservice)

                                <li class="nav-item">
                                    <a href="{{ route('front.service.details', $navservice->slug) }}" class="nav-link">{{ $navservice->title }}</a>
                                </li>
                                    
                                @endforeach
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('front.project') }}" class="nav-link">@lang('Portfolio')</a>
                            
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('front.blog') }}" class="nav-link">@lang('Blog')</a>
                            
                        </li>
                        
                        <li class="nav-item">
                            <a href="{{ route('front.about') }}" class="nav-link">@lang('About Us')</a>
                        </li>
                        

                        <li class="nav-item">
                            <a href="{{ route('front.contact') }}" class="nav-link">@lang('Contact')</a>
                        </li>

                    </ul>
                    <div class="language-switcher" style="position: relative; display: inline-block; margin-right: 10px;">
                        <button class="lang-btn" style="background-color: #7c67f2; color:#fff; border-radius:5px; border: 1px solid #ccc; padding: 8px 12px; cursor: pointer;">
                            <i class="fa-solid fa-globe"></i> {{ Session::has('language') ? ( Session::get('language') == 1 ? 'English' : 'Deutsch' ) : 'English' }} <i class="fa-solid fa-chevron-down"></i>
                        </button>
                        <div class="lang-dropdown" style="display: none; position: absolute; background-color: white; min-width: 100px; box-shadow: 0px 4px 8px rgba(0,0,0,0.1); z-index: 1;">
                            @foreach(DB::table('languages')->get() as $language)
                            <a href="{{route('front.language',$language->id)}}" style="display: block; padding: 8px 12px; text-decoration: none; color: black;">{{$language->language}}</a>
                            @endforeach
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- End Navbar Section -->