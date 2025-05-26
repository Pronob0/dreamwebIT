<?php

namespace App\Providers;

use App\Models\Blog;
use App\Models\Generalsetting;
use App\Models\Service;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
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


            if (Session::has('language')) {
                $data = DB::table('languages')->find(Session::get('language'));
                if($data->id == 1){
                    App::setlocale('en');
                }
                else{
                    App::setlocale('de');
                }

                
            }
            else {
                $data = DB::table('languages')->where('is_default','=',1)->first();
                App::setlocale('en');
            }
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
