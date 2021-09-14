import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.search, size: 32,),
              SizedBox(width: 12,),
              Text("جستجو در", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey),),
              SizedBox(width: 8,),
              Image.asset("res/Images/digikala_small_logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
