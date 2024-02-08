<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product; // Assurez-vous d'importer le modèle Product si vous l'utilisez

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all(); // Vous pouvez remplacer cette ligne avec la logique pour récupérer vos produits depuis la base de données
        return view('welcome', compact('products')); // Assurez-vous que le nom de la vue est correct
    }
}

