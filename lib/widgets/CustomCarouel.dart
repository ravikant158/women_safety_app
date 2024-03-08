// ignore: unused_import
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/quotes.dart';

class CustomCarouel extends StatelessWidget {
  const CustomCarouel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          AspectRatio: 2.0,
          autoplay : true,
          enlargeCentrePage: true,
        ),
        items: List.generate(
          imagesliders.length, 
          (index) => Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
              ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imagesliders[index]),
                )
                
              ),
              child : Container(
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.5),
                  Colors.transparent,
                  ],
                ),),
                
              child:Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 8),
                child: Text(
                articleTitle[index],
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
               ),
              ),
              )
            )
          )
          ),
      ),

    );
  }
}