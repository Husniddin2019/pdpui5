import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//header
           Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
             width: double.infinity,
             height: 300,
             decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50),
               image: DecorationImage(
                 image: AssetImage("assets/images/ic_header.jpg"),
                 fit: BoxFit.cover
               )
             ),
                 child: Container(
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.bottomRight,
                     colors: [
                       Colors.black.withOpacity(0.8),
                       Colors.black.withOpacity(0.4),
                     ]
                   )
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("Best Hotels ever ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                     Container(
                       padding: EdgeInsets.symmetric(vertical: 3),
                       margin: EdgeInsets.symmetric(horizontal: 40),
                       height:  40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.white
                       ),
                       child: TextField(
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           prefixIcon: Icon(Icons.search,color: Colors.grey,),
                           hintStyle: TextStyle(color: Colors.grey),
                           hintText: "Qidirish",

                         ),
                       ),
                     ),
                     SizedBox(height: 30,),
                   ],

                 ),


                 // fit: BoxFit.cover,
               ),
              ),
            SizedBox(height: 20,),

//body
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bizness Hotels",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800,fontSize: 24),),
                SizedBox(height: 10,),
                Container(
                  height: 150, child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    make("assets/images/ic_header.jpg","Hotel №1"),
                    make("assets/images/ic_hotel1.jpg","Hotel №2"),
                    make("assets/images/ic_hotel2.jpg","Hotel №3"),
                    make("assets/images/ic_hotel3.jpg","Hotel №4"),
                    make("assets/images/ic_hotel4.jpg","Hotel №5"),
                    make("assets/images/ic_hotel5.jpg","Hotel №5"),
                    make("assets/images/ic_hotel1.jpg","Hotel №6"),

                  ],
                ),),
                SizedBox(height: 20,),
                Text("AIRPORT Hotels",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800,fontSize: 24),),
                SizedBox(height: 10,),
                Container(
                  height: 150, child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    make("assets/images/ic_header.jpg","Hotel №1"),
                    make("assets/images/ic_hotel1.jpg","Hotel №2"),
                    make("assets/images/ic_hotel2.jpg","Hotel №3"),
                    make("assets/images/ic_hotel3.jpg","Hotel №4"),
                    make("assets/images/ic_hotel4.jpg","Hotel №5"),
                    make("assets/images/ic_hotel5.jpg","Hotel №5"),
                    make("assets/images/ic_hotel1.jpg","Hotel №6"),
                  ],
                ),),
                SizedBox(height: 20,),
                Text("Resort Hotels",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800,fontSize: 24),),
                SizedBox(height: 10,),
                Container(
                  height: 150, child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    make("assets/images/ic_header.jpg","Hotel №1"),
                    make("assets/images/ic_hotel1.jpg","Hotel №2"),
                    make("assets/images/ic_hotel2.jpg","Hotel №3"),
                    make("assets/images/ic_hotel3.jpg","Hotel №4"),
                    make("assets/images/ic_hotel4.jpg","Hotel №5"),
                    make("assets/images/ic_hotel5.jpg","Hotel №5"),
                    make("assets/images/ic_hotel1.jpg","Hotel №6"),
                  ],
                ),),


              ],
            ),
          ),

          ],
        ),
      ),
    );
  }
  Widget make(image, title){
    return AspectRatio(aspectRatio: 1.4/1,
    child: Container(
     margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),

               Icon(Icons.favorite_sharp,size: 20,color: Colors.red,),
            ],
          )

        ),
      ),
    ),
    );
  }
}














