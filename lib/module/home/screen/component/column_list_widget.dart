import 'package:digikala/module/home/screen/component/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnListWidget extends StatelessWidget {
  const ColumnListWidget({Key? key}) : super(key: key);

  final double height = 170;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Container(
        height: 1000,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            ProductWidget(height),
            ProductWidget(height),
            ProductWidget(height),
            ProductWidget(height),
          ],
        ),
      ),
    );
  }
}
