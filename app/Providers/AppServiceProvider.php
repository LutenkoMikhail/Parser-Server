<?php

namespace App\Providers;

use App\Server;
use App\Source;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if (Schema::hasTable('servers')) {
            $totalServers = Server::get()->count();
            view()->share('totalServers', $totalServers);
        }
        if (Schema::hasTable('sources')) {
            $totalSources = Source::get()->count();
            view()->share('totalSources', $totalSources);
        }
    }
}
