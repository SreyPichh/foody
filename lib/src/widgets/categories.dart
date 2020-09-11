import 'package:flutter/material.dart';
import 'package:foody/src/models/category.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: 'Sushi', image: 'sushi.png'),
  Category(name: 'Burger', image: 'burger.png'),
  Category(name: 'FastFood', image: 'fastfood.png'),
  Category(name: 'Salad', image: 'salad.png'),
  Category(name: 'Protein', image: 'protein.png'),
  Category(name: 'Fruit', image: 'fruit.png'),
];

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.all(14),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red[50],
                          offset: Offset(1, 1),
                          blurRadius: 14),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  color: black,
                  size: 14,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
