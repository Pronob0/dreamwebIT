<!-- Start Navbar Section -->
<div class="navbar-section">
    <div class="techvio-responsive-nav">
        <div class="container">
            <div class="techvio-responsive-menu">
                <div class="logo">
                    <a href="{{ route('front.index') }}">
                        <img src="{{ getPhoto($gs->header_logo) }}" class="white-logo" alt="logo">
                        <img src="{{ getPhoto($gs->footer_logo) }}" class="black-logo" alt="logo">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="techvio-nav">
        <div class="container">
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="index.html">
                    <img src="{{ getPhoto($gs->header_logo) }}" class="white-logo" alt="logo">
                    <img src="{{ getPhoto($gs->footer_logo) }}" class="black-logo" alt="logo">
                </a>
                <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item"> 
                            <a href="{{ route('front.index') }}" class="nav-link">@lang('Home') </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('front.service') }}" class="nav-link">@lang('Services') <i class="fas fa-chevron-down"></i></a>

                            <ul class="dropdown-menu">
                                @foreach ($services as $navservice)

                                <li class="nav-item">
                                    <a href="{{ route('front.service.details', $navservice->slug) }}" class="nav-link">{{ $navservice->title }}</a>
                                </li>
                                    
                                @endforeach
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('front.project') }}" class="nav-link">@lang('Portfolio') <i class="fas fa-chevron-down"></i></a>
                            
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">Blog <i class="fas fa-chevron-down"></i></a>
                            
                        </li>
                        <li class="nav-item"> 
                            <a href="#" class="nav-link">Pages <i class="fas fa-chevron-down"></i></a>
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a href="about.html" class="nav-link">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="team.html" class="nav-link">Team</a>
                                </li>
                                <li class="nav-item">
                                    <a href="pricing.html" class="nav-link">Pricing</a>
                                </li>
                                <li class="nav-item">
                                    <a href="error-404.html" class="nav-link">404 Error</a>
                                </li>
                                <li class="nav-item">
                                    <a href="faq.html" class="nav-link">FAQ</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a href="coming-soon.html" class="nav-link">Coming Soon</a>
                                </li>
                                <li class="nav-item">
                                    <a href="terms-condition.html" class="nav-link">Terms & Conditions</a>
                                </li>
                                <li class="nav-item">
                                    <a href="privacy-policy.html" class="nav-link">Privacy Policy</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="about.html" class="nav-link">About Us</a>
                        </li>
                        

                        <li class="nav-item">
                            <a href="contact.html" class="nav-link">Contact</a>
                        </li>

                    </ul>
                    <div class="other-option">
                        <a class="call-btn" href="tel:12345678"><i class="flaticon-phone-call"></i> 080 707 555-321</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- End Navbar Section -->