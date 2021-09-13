import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
          child: Text(
        "سشبتنا شستیا شسنتی شست ایشس",
        style: Theme.of(context).textTheme.bodyText1,
      )),
    );
  }
}
