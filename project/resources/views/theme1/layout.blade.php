<!doctype html>
<html class="no-js" lang="en">

<head>
    @include('common.meta')
    @include('common.style')
</head>

<body>
    

    @if (request()->is('/'))
    @include('common.header')
    @else
    @include('common.header')
    @endif
    
    <main>
        @yield('content')

        
    </main>
    
    @include('common.footer')
    @include('cookie-consent::index')
    @include('common.script')
    {!! Toastr::message() !!}

    <script>
    
        @if(Session::has('message'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
        toastr.success("{{ session('message') }}");
        @endif

        @if(Session::has('error'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
            toastr.error("{{ session('error') }}");
        @endif

        @if(Session::has('info'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
            toastr.info("{{ session('info') }}");
        @endif

        @if(Session::has('warning'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
            toastr.warning("{{ session('warning') }}");
        @endif
   
</script>
</body>

</html>
