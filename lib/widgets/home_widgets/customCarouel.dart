import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/quotes.dart';

class Customcarouel extends StatelessWidget {
  const Customcarouel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: List.generate(
          imageSliders.length, 
          (index)=> Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageSliders[index]))
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(articleTitle[index], style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      color: Colors.blueAccent,
                      fontSize: MediaQuery.of(context).size.width * 0.04
                    ),),
                  )
                ),
              )
            ),
          ),
        ), 
        options: CarouselOptions(
          aspectRatio: 2.0,
         autoPlay: true,
         enlargeCenterPage: true,
        )
      ),
    );
  }
}
