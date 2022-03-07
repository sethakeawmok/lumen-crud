<?php

namespace App\Http\Middleware;

use App\Models\Users;
use Closure;
use Exception;
use Firebase\JWT\ExpiredException;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;


class JwtMiddleware
{
    public function handle($request, Closure $next, $guard = null)
    {
        
        $header = $request->header('Authorization');
        $token = "";
        if (!empty($header)){
            $token = explode(' ', $header)[1];
        }
       
        if (!$token) {
            // Unauthorized response if token not there
            return response()->json([
                'error' => 'Token not provided.',
            ], 401);
        }
        try {
            //$credentials = JWT::decode($token, env('JWT_SECRET'), ['HS256']);
            $credentials = JWT::decode($token, new key (env('JWT_SECRET'),'HS256'));
        } catch (ExpiredException $e) {
            return response()->json([
                'error' => 'Provided token is expired.',
            ], 400);
        } catch (Exception $e) {
            return response()->json([
                'error' => 'An error while decoding token.',
            ], 400);
        }
        $user = Users::find($credentials->sub);
       
        $request->auth = $user;
        return $next($request);
    }
}
