<?php

namespace App\Http\Controllers;

use App\Models\Attestations;
use Illuminate\Http\Request;

class AttestationController extends Controller
{
    public function add(Request $request)
    {
        $validated = $request->validate([
            'etudiant_id' => 'required',
            'convention_id' => 'required',
            'message' => 'required|max:255',
        ]);

        $x = Attestations::create($validated);

        return redirect()->back();
    }
}
