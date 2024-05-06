<?php

namespace App\Providers;

use App\Models\Blog;
use App\Models\Generalsetting;
use App\Models\Service;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
      

        view()->composer('*', function ($settings) {
            $settings->with('gs',Generalsetting::first());
            $settings->with('fblog',Blog::orderBy('created_at','desc')->where('status',1)->take(6)->get());
            $settings->with('services' , Service::orderBy('id','desc')->where('status',1)->get());
        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();
    }
}
