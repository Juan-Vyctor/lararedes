<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function create() {
        return view('register');
    }

    public function store(Request $request) {
        $nome = $request['nome'];
        User::create([
            'nome' => $nome,
            'email' => $request['email'],
            'senha' => bcrypt($request['senha']),
        ]);
        return view('dashboard', ['usuario'=>$nome]);
    }

    public function login() {
        return view('login');
    }

    public function auth(Request $request) {
        $email = $request['email'];
        $senha = $request['senha'];
        $usuario = User::where('email', $email)->first();
        if (!Hash::check($senha, $usuario->senha)) {
            return view('home');
        }
        Auth::login($usuario);
        $nome = $usuario->nome;
        return view('dashboard', ['usuario'=>$nome]);
    }
    
}
