<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Session;
use App\Models\Customer;


class InvoiceApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $start = $request->start;
        $end = $request->end;

        $created = 50;
        $activated = 100;
        $appointment = 200;

        $total_price = 0;
        $invoice_total = 0; 

        $conditions = [];


        if($request->has('customer') && $request->customer!= null){
            $conditions = array_merge($conditions, ['customer_id' => $request->customer]);
        }


        $users = User::where($conditions);

        $users = $users->get();


        $data = [];

        foreach($users as $user){

            $useres = 'User name : ' . $user->name;
            $userc = 'User ID : ' . $user->id;
            $usered = 'User registered : ' . $user->created_at;

            $invoice = '';
            $activ = '';

                if($user->sessions()->whereNotNull('appointment')->exists()){
                    $invoice = $user->sessions()->whereNotNull('appointment')->select('appointment')->get();
                    if($user->sessions()->whereNotNull('activated')->exists()){
                        $activ = $user->sessions()->whereNotNull('activated')->select('activated')->get();
                    }
                    if($start != null && $end != null){
                        if($user->sessions()->where('appointment', '>=', $start)->where('appointment', '<=', $end)->exists()){
                            $total_price = $appointment;                    
                        }elseif($user->sessions()->where('activated', '>=', $start)->where('activated', '<=', $end)->exists()){
                            $total_price = $activated;
                        }elseif($user->where('created_at', '>=', $start)->where('created_at', '<=', $end)->first()){
                            $total_price = $created;
                        }
                    }
                } elseif($user->sessions()->whereNotNull('activated')->exists()){
                    $invoice = $user->sessions()->whereNotNull('activated')->select('activated')->get();
                    if($start != null && $end != null){
                        if($user->sessions()->where('activated', '>=', $start)->where('activated', '<=', $end)->exists()){
                            $total_price = $activated;
                        }elseif($user->where('created_at', '>=', $start)->where('created_at', '<=', $end)->first()){
                            $total_price = $created;
                        }
                    }
                } else{
                    $invoice = $user->whereNotNull('created_at')->select('created_at')->first();
                    if($start != null && $end != null){
                        if($user->where('created_at', '>=', $start)->where('created_at', '<=', $end)->first()){
                            $total_price = $created;
                        }
                    }
                    
                }
            
            $invoice_total = 'Invoice total : '  .  $total_price . ' SAR';


            $item = array($useres,$userc,$usered,$invoice,$activ,$invoice_total);

            array_push($data, $item);
          
        }



        return response()->json([
            'data' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}