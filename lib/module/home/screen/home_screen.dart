import 'package:digikala/component/custom_app_bar.dart';
import 'package:digikala/module/home/screen/component/search_app_bar.dart';
import 'package:digikala/module/home/screen/component/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              SearchAppBar()
            ],
          ),
        ),
      ),
    );
  }
}
