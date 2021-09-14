import 'package:digikala/module/home/screen/component/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnListWidget extends StatelessWidget {
  const ColumnListWidget({Key? key}) : super(key: key);

  final double height = 350;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Container(
        height: 600,
        child: ListView(
          children: [
            Container(
              height: height,
              child: Row(children: [
                Expanded(child: ProductWidget(height),),
                Expanded(child: ProductWidget(height),),
              ],),
            ),
            Container(
              height: height,
              child: Row(children: [
                Expanded(child: ProductWidget(height),),
                Expanded(child: ProductWidget(height),),
              ],),
            ),
            Container(
              height: height,
              child: Row(children: [
                Expanded(child: ProductWidget(height),),
                Expanded(child: ProductWidget(height),),
              ],),
            ),
            Container(
              height: height,
              child: Row(children: [
                Expanded(child: ProductWidget(height),),
                Expanded(child: ProductWidget(height),),
              ],),
            ),
            Container(
              height: height,
              child: Row(children: [
                Expanded(child: ProductWidget(height),),
                Expanded(child: ProductWidget(height),),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
