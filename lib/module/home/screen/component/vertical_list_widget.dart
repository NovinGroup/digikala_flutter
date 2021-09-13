import 'package:digikala/module/home/screen/component/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalListWidget extends StatelessWidget {
  const VerticalListWidget({Key? key}) : super(key: key);

  final double height = 170;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductWidget(height),
          VerticalDivider(),
          ProductWidget(height),
          VerticalDivider(),
          ProductWidget(height),
          VerticalDivider(),
          ProductWidget(height),
        ],
      ),
    );
  }
}
