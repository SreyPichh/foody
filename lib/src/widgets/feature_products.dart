import 'package:flutter/material.dart';
import 'package:foody/src/models/product.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Product> productsList = [
  Product(name: "Grill Salmon", price: 6.99, rating: 4.2, vendor: "GoodFoods", whishList: true, image: 'grillSalmon.png' ),
  Product(name: "Pasta", price: 11.99, rating: 4.6, vendor: "GoodFoods", whishList: false, image: 'pasta.png' ),
  Product(name: "Cream", price: 9.99, rating: 4.6, vendor: "GoodFoods", whishList: false, image: 'cream.png' ),
  Product(name: "Steak", price: 9.99, rating: 4.6, vendor: "GoodFoods", whishList: true, image: 'steak.png' ),
  Product(name: "Curry", price: 9.99, rating: 4.6, vendor: "GoodFoods", whishList: false, image: 'indian.png' ),
];

class FeatureProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(14, 4, 14, 4),
        child: Container(
          height: 240,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productsList.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red[100],
                            offset: Offset(1, 1),
                            blurRadius: 6,
                          )
                        ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Image.asset(
                            "images/${productsList[index].image}",
                            height: 140,
                            width: 140,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: CustomText(text: productsList[index].name),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.red[100],
                                        offset: Offset(1, 1),
                                        blurRadius: 4
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: productsList[index].whishList ? Icon(Icons.favorite, color: red, size: 16,) : Icon(Icons.favorite_border, color: red, size: 16,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 8, top: 8),
                                  child: CustomText(text: productsList[index].rating.toString(), size: 14, color: grey, ),
                                ),

                                SizedBox(width: 4,),

                                Icon(Icons.star, size: 16, color: red,),
                                Icon(Icons.star, size: 16, color: red,),
                                Icon(Icons.star, size: 16, color: red,),
                                Icon(Icons.star, size: 16, color: red,),
                                Icon(Icons.star, size: 16, color: grey,)
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8, top: 8),
                              child: CustomText(text: '\$${productsList[index].price}', size: 14,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

