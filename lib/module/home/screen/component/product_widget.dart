import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final double height;

  const ProductWidget(this.height, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
          child: Column(
            children: [
              Image.asset("res/Images/product_charger_wire.jpg"),
              SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("سیم شارژر موبایل اندرویدی"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text("۳،۶۰۰ تومان هدیه نقدی", style: Theme.of(context).textTheme.caption,),
              ),
              Expanded(child: Center()),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                      child: Text("٪ ۳۷", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("۳۸۹،۰۰۰ تومان", textAlign: TextAlign.end,),
                      Padding(
                        padding: const EdgeInsets.only(left: 36),
                        child: Text("۴۸۹،۰۰۰", textAlign: TextAlign.end, style: Theme.of(context).textTheme.caption?.copyWith(decoration: TextDecoration.lineThrough),),
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(height: 12,)
            ],
          ),
        ),
      ),
    );
  }
}
