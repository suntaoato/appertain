<?php
/*
The MIT License (MIT)

Copyright (c) 2014 Howard Beard-Marlowe

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

require_once(__DIR__ . '/top.php');

$template = $GLOBALS['config']->getKey('theme', 'name');

$rules = array( 
    'profile'   => "/profiles/(?'text'[^/]+)",              // '/profiles/some-text'
    'admin'     => "/admin",                                // '/admin'
    'team'      => "/team",                                 // '/team'
    'login'     => "/",                                     // '/'
    'loginlong' => "/login"                                 // 'login'
);

$uri = rtrim( dirname($_SERVER["SCRIPT_NAME"]), '/' );
$uri = '/' . trim( str_replace( $uri, '', $_SERVER['REQUEST_URI'] ), '/' );
$uri = urldecode( $uri );

error_log($uri, $message_type = null, $destination = null, $extra_headers = null);

foreach ( $rules as $action => $rule ) {
    if ( preg_match( '~^'.$rule.'$~i', $uri, $params ) ) {
        /* now you know the action and parameters so you can 
         * include appropriate template file ( or proceed in some other way )
         */
         
			error_log($action, $message_type = null, $destination = null, $extra_headers = null);   
         
			switch($action)
			{
				case 'admin':
					checkAuth();
				case 'team' :
					checkAuth();			
				case 'login':
					include("./themes/". $template . "/" . $action . ".php");
					break;
				case 'loginlong':
					include("./themes/". $template . "/login.php");
			}       
        
        exit();
    }
}


function checkAuth()
{
    
    if (!is_null($_SESSION['user']) && !$_SESSION['user']->isAuth) {
        include("./themes/" . $GLOBALS['config']->getKey('theme', 'name') . "/");
        exit();
    }
    
    return true;   
}

?>