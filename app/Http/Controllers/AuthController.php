<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function create() {
        return view('register');
    }

    public function store(Request $request) {
        // insira aqui codigo
        return view('dashboard');
    }

    public function login() {
        return view('login');
    }

    public function auth(Request $request) {
        // insira aqui codigo
        return view('dashboard');
    }
    
}
