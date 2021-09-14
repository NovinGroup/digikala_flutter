import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);

  final List<CategoryModel> models = [
    CategoryModel(
      "بازگشت به مدرسه",
    ),
    CategoryModel(
      "لوازم تحریر",
    ),
    CategoryModel(
      "کالای دیجیتال",
    ),
    CategoryModel(
      "زیبایی و سلامت",
    ),
    CategoryModel(
      "مد و پوشاک",
    ),
    CategoryModel(
      "دیجی‌پلاس",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  _buildCircle(60, Colors.red),
                  Center(child: _buildCircle(50, Colors.blueAccent, child: Icon(Icons.label_important_outline_rounded, color: Colors.white,))),
                ],
              ),
              SizedBox(height: 3,),
              Text(
                models[index].title,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.black87),
              ),
            ]),
          );
        },
        itemCount: models.length,
      ),
    );
  }

  Widget _buildCircle(double size, Color color, {Widget? child}) {
    return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.white),
          gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                const Color(0xFF0EAB9D),
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      child: child,
    );
  }
}

class CategoryModel {
  final String title;

  const CategoryModel(this.title);
}
