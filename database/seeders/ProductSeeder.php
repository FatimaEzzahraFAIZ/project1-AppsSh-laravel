<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {
        //
    Product::create([
            "name"=> "YouTube Kids",
            "slug"=>"YouTube Kids",
            "description"=> "<P><P><li>une application vidéo pour enfants</li><li>offrir aux enfants une plate-forme plus adaptée</li><li>Permettant aux enfants d'explorer le monde par eux-mêmes</li><li>Facilitant l'accompagnement des parents et des autres adultes</li></p>",
            "image_name"=> "watch-3.png",
            "price"=> "250.00",
            "sale_price"=> "120.00",
        ]);
        product::create([
            "name"=> "ibis Paint",
            "slug"=> "ibis Paint",
            "description"=> "application de dessin",
            "image_name"=>"watch-2.png",
            "price"=> "390.00",
            "sale_price"=> "250.00",
           
            ]);
            product::create([
                "name"=> "Litchi pour DJI Drones",
                "slug"=> "Litchi pour DJI Drones",
                "description"=> "app pour drones DJI!",
                "image_name"=>"icone15.webp",
                "price"=> "550.00",
                "sale_price"=> "330.00",
               
                ]);
                product::create([
                    "name"=> "Pocket Kado",
                    "slug"=> "Pocket Kado",
                    "description"=> "<p>Rencontrez nouveau ami",
                    "image_name"=>"icone14.webp",
                    "price"=> "250.00",
                    "sale_price"=> "120.00",
                   
                    ]);
                    product::create([
                        "name"=> "Canva: Design, Photo & Video",
                        "slug"=> "Canva: Design, Photo & Video",
                        "description"=> "your free photo editor",
                        "image_name"=>"watch-4.png",
                        "price"=> "390.00",
                        "sale_price"=> "180.00",
                       
                        ]);
                        product::create([
                            "name"=> "ibis Paint",
                            "slug"=> "ibis Paint",
                            "description"=> "application de dessin",
                            "image_name"=>"watch-2.png",
                            "price"=> "390.00",
                            "sale_price"=> "250.00",
                           
                            ]);
                            product::create([
                                    "name"=> "Mirror Lab",
                                    "slug"=> "Mirror Lab",
                                    "description"=> "app de retouche photo",
                                    "image_name"=>"icone17.webp",
                                    "price"=> "550.00",
                                    "sale_price"=> "330.00",
                                   
                                    ]);
                                    product::create([
                                        "name"=> "Photo Studio PRO",
                                        "slug"=> "Photo Studio PRO",
                                        "description"=> "appd'édition photo ",
                                        "image_name"=>"icone17.webp",
                                        "price"=> "390.00",
                                        "sale_price"=> "180.00",
                                       
                                        ]);
                                        product::create([
                                            "name"=> "ProShot",
                                            "slug"=> "ProShot",
                                            "description"=> "ispositions d'écran",
                                            "image_name"=>"icone18.webp",
                                            "price"=> "250.00",
                                            "sale_price"=> "120.00",
                                           
                                            ]);
                                        product::create([
                                            "name"=> "SimpleMind Pro - Mind Mapping",
                                            "slug"=> "SimpleMind Pro - Mind Mapping",
                                            "description"=>"cartographie mentale",
                                            "image_name"=>"icone19.webp",
                                            "price"=> "390.00",
                                            "sale_price"=> "250.00",
                                               
                                        ]);
                                        product::create([
                                            "name"=> "YOUKU-Drama, Film, Show, Anime",
                                            "slug"=> " YOUKU-Drama, Film, Show, Anime",
                                            "description"=> " qualité sur YOUKU",
                                            "image_name"=>"icone20.webp",
                                            "price"=> "550.00",
                                            "sale_price"=> "330.00",
                                           
                                            ]);
                                            product::create([
                                                "name"=> "Tencent Video",
                                                "slug"=> "Tencent Video",
                                                "description"=> "regarder des émissions",
                                                "image_name"=>"icone21.webp",
                                                "price"=> "390.00",
                                                "sale_price"=> "180.00",
                                               
                                                ]);
                                                product::create([
                                                    "name"=> "WeChat",
                                                    "slug"=> "WeChat",
                                                    "description"=> " application de messagerie ",
                                                    "image_name"=>"icone22.webp",
                                                    "price"=> "250.00",
                                                    "sale_price"=> "120.00",
                           
                                                ]);
    
                                                
                                                    product::create([
                                                        "name"=> "Lecteur audio USB PRO",
                                                        "slug"=> "Lecteur audio USB PRO",
                                                        "description"=> "Lecteur média",
                                                        "image_name"=>"icone23.webp",
                                                        "price"=> "390.00",
                                                        "sale_price"=> "250.00",
                                                       
                                                        ]);
                                                    product::create([
                                                        "name"=> "SoundCloud",
                                                        "slug"=> "SoundCloud",
                                                        "description"=> "music",
                                                        "image_name"=>"watch-1.png",
                                                        "price"=> "550.00",
                                                        "sale_price"=> "330 .00",
                                                           
                                                    ]);
                                                    product::create([
                                                        "name"=> "spotify",
                                                        "slug"=> "spotify",
                                                        "description"=> "photo editor ",
                                                        "image_name"=>"watch-2...png",
                                                        "price"=> "390.00",
                                                        "sale_price"=> "180.00",
                                                       
                                                        ]);
                                                    product::create([
                                                        "name"=> "Mirror Lab",
                                                        "slug"=> "Mirror Lab",
                                                        "description"=> "app de retouche photo",
                                                        "image_name"=> "icone17.webp",
                                                        "price"=> "550.00",
                                                        "sale_price"=> "330.00",
                                                     ]);
                                                    product::create([
                                                        "name"=> "YOUKU-Drama, Film, Show, Anime",
                                                        "slug"=> "YOUKU-Drama, Film, Show, Anime",
                                                        "description"=> "qualité, illimité sur YOUKU",
                                                        "image_name"=> "icone20.webp",
                                                        "price"=> "550",
                                                        "sale_price"=> "330",
                                                    ]);}}
