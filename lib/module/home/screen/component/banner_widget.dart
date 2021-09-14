import 'package:digikala/module/home/screen/component/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Container(
        height: 120,
        child: RoundImage("res/Images/banner_1.jpg"),
      ),
    );
  }
}
