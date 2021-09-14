import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionBox extends StatelessWidget {
  const SuggestionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("موبایل", style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),),
          SizedBox(height: 4,),
          Text("بر اساس بازدید‌های شما", style: Theme.of(context).textTheme.caption,),
          SizedBox(height: 12,),
          Container(
            height: MediaQuery.of(context).size.width - (28 * 2),
            child: Stack(
              children: [
                Image.asset("res/Images/grid_borders.png"),
                GridView.count(crossAxisCount: 3, children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone_2.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone_3.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone_4.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone_2.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("res/Images/product_phone_4.jpg"),
                  ),
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
