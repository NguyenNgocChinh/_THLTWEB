<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  ...$guards
     * @return mixed
     */
    public function handle(Request $request, Closure $next, ...$guards)
    {
        $guards = empty($guards) ? [null] : $guards;

        // foreach ($guards as $guard) {
        //     if (Auth::guard($guard)->check()) {

        //         return redirect(RouteServiceProvider::HOME);
        //     }
        // }

        $username = $request->username;
        $password = $request->password;
        if (Auth::attempt(['username' => $username, 'password' => $password, 'vaitro' => 'admin'])) {
            // email admin mới được xác thực thành công
            return redirect()->route('index_admin');
        }
        if (Auth::attempt(['username' => $username, 'password' => $password, 'trangthai' => 0])) {
            Auth::logout();
            Session::flush();
            return  response()->view('nguoidung.taikhoanvohieuhoa');
        }

        if (Auth::attempt(['username' => $username, 'password' => $password, 'trangthai' => 1])) {
            return redirect()->route('trangchu_user');
        }


        return $next($request);
    }
}