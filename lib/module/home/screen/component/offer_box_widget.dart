import 'package:digikala/module/home/screen/component/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferBoxWidget extends StatelessWidget {
  final Color color;
  final String imageAssetUri;

  const OfferBoxWidget(this.color, this.imageAssetUri, {Key? key}) : super(key: key);

  final double height = 170;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: 400,
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset(imageAssetUri),
              ),
              ProductWidget(height),
              ProductWidget(height),
              ProductWidget(height),
              ProductWidget(height),
            ],
          ),
        ),
      ),
    );
  }
}
