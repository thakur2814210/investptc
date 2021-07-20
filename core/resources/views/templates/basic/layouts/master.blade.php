<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> {{ $general->sitename}} - {{__(@$page_title)}} </title>


    <link rel="shortcut icon" href="{{getImage(imagePath()['logoIcon']['path'] .'/favicon.png', '128x128')}}" type="image/x-icon">
    @include('partials.seo')

    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/fontawesome-all.min.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/lightcase.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/swiper.min.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/odometer.css')}}">

    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/line-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/animate.css')}}">

    @stack('style-lib')
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/style.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue . 'frontend/css/custom.css')}}">
    @stack('css')
    <link rel="stylesheet" href='{{ asset($activeTemplateTrue."frontend/css/color.php?color=$general->base_color&color2=$general->secondary_color")}}'>

    @stack('style')
</head>

<body>

@stack('facebook')

@include($activeTemplate.'partials.preloader')

@include($activeTemplate.'partials.header')
<a href="#" class="scrollToTop"><i class="las la-angle-double-up"></i></a>

@if(!request()->routeIs('home'))
    @include($activeTemplate.'layouts.breadcrumb')
@endif

@yield('content')

@include($activeTemplate.'partials.footer')

<!-- ============Footer Section Ends Here============ -->
<script src="{{asset($activeTemplateTrue . 'frontend/js/jquery-3.6.0.min.js')}}"></script>
<script src="{{asset($activeTemplateTrue . 'frontend/js/bootstrap.min.js')}}"></script>
<script src="{{asset($activeTemplateTrue . 'frontend/js/lightcase.js')}}"></script>
<script src="{{asset($activeTemplateTrue . 'frontend/js/swiper.min.js')}}"></script>
<script src="{{asset($activeTemplateTrue . 'frontend/js/viewport.jquery.js')}}"></script>
<script src="{{asset($activeTemplateTrue . 'frontend/js/odometer.min.js')}}"></script>

<script src="{{asset($activeTemplateTrue . 'frontend/js/wow.min.js')}}"></script>
@stack('script-lib')
<script src="{{asset($activeTemplateTrue . 'frontend/js/main.js')}}"></script>



@include('partials.notify')
@include('partials.plugins')

<script>
    'use strict';
    (function($){
        $(document).on("change", ".langSel", function() {
            window.location.href = "{{url('/')}}/change/"+$(this).val() ;
        });
    })(jQuery)
</script>
@stack('script')

</body>
</html>
