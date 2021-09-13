import 'package:digikala/component/custom_app_bar.dart';
import 'package:digikala/module/home/screen/component/category_list.dart';
import 'package:digikala/module/home/screen/component/offer_box_widget.dart';
import 'package:digikala/module/home/screen/component/search_app_bar.dart';
import 'package:digikala/module/home/screen/component/search_widget.dart';
import 'package:digikala/module/home/screen/component/slider.dart';
import 'package:digikala/module/home/screen/component/suggestion_box.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchAppBar(),
                AppSlider(),
                CategoryList(),
                OfferBoxWidget(),
                SuggestionBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
