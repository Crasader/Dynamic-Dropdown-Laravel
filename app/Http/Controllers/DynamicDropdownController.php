<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class DynamicDropdownController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $country = DB::table('dynamic_dropdowns')->distinct()->select('Country')->get();
        return view('dynamic_dropdown')->with('country',$country);
    }
    public function fetch(Request $request){
        $country = $request->value;
        $state = DB::table('dynamic_dropdowns')->where('Country',$country)->distinct()->select('State')->get();
        echo '<option value="">Please Select State</option>';
        foreach ($state as $row)
             {
            //   $id = $row->id;
              $data =  $row->State;
              echo '<option value="'.$data.'">'.$data.'</option>';
             }
    }
    public function fetchcity(Request $request)
    {
        $state = $request->value;
        $state = DB::table('dynamic_dropdowns')->where('State',$state)->get();
        echo '<option value="">Please Select State</option>';
        foreach ($state as $row)
             {
              $id = $row->id;
              $data =  $row->city;
              echo '<option value="'.$data.'">'.$data.'</option>';
             }
    }
   
}
