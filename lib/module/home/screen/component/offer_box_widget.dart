import 'package:digikala/module/home/screen/component/product_widget.dart';
import 'package:flutter/cupertino.dart';

class OfferBoxWidget extends StatelessWidget {
  const OfferBoxWidget({Key? key}) : super(key: key);

  final double height = 170;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductWidget(height),
          ProductWidget(height),
          ProductWidget(height),
          ProductWidget(height),
        ],
      ),
    );
  }
}
