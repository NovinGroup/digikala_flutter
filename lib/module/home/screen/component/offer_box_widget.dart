import 'package:digikala/module/home/screen/component/product_widget.dart';
import 'package:flutter/cupertino.dart';

class OfferBoxWidget extends StatelessWidget {
  const OfferBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductWidget(),
          ProductWidget(),
          ProductWidget(),
          ProductWidget(),
        ],
      ),
    );
  }
}
