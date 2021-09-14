import 'package:digikala/component/custom_app_bar.dart';
import 'package:digikala/module/home/screen/component/banner_widget.dart';
import 'package:digikala/module/home/screen/component/category_list.dart';
import 'package:digikala/module/home/screen/component/column_list_widget.dart';
import 'package:digikala/module/home/screen/component/offer_box_widget.dart';
import 'package:digikala/module/home/screen/component/search_app_bar.dart';
import 'package:digikala/module/home/screen/component/search_widget.dart';
import 'package:digikala/module/home/screen/component/slider.dart';
import 'package:digikala/module/home/screen/component/suggestion_box.dart';
import 'package:digikala/module/home/screen/component/vertical_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
              label: "خانه",
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "خانه",
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "خانه",
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home)),
        ],
        elevation: 10,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchAppBar(),
                AppSlider(),
                CategoryList(),
                OfferBoxWidget(),
                BannerWidget(),
                SuggestionBox(),
                OfferBoxWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
