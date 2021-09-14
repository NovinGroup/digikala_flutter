import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatelessWidget {
  AppSlider({Key? key}) : super(key: key);

  final List<String> _imagesUri = [
    "res/Images/banner_1.jpg",
    "res/Images/banner_2.jpg",
    "res/Images/banner_3.jpg",
    "res/Images/banner_4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(height: 180.0),
          items: _imagesUri.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
