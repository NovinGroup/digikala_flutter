import 'package:flutter/cupertino.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);

  final List<CategoryModel> models = [
    CategoryModel("بازگشت به مدرسه",),
    CategoryModel("بازگشت به مدرسه",),
    CategoryModel("بازگشت به مدرسه",),
    CategoryModel("بازگشت به مدرسه",),
    CategoryModel("بازگشت به مدرسه",),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            child: Text(models[index].title),
          );
        },
        itemCount: models.length,
      ),
    );
  }
}

class CategoryModel {
  final String title;

  const CategoryModel(this.title);
}
