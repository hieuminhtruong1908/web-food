<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;

use Illuminate\Http\Request;
use App\Events\WebsocketDemoEvent;

class HiHiController extends Controller
{
    public function hihi(){
   
   		$dd = Hash::make(123456);
    	
        echo $dd;
    }
}
