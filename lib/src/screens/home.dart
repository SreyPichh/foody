import 'package:flutter/material.dart';

import 'package:foody/src/commons.dart';
import 'package:foody/src/widgets/categories.dart';
import 'package:foody/src/widgets/custom_text.dart';
import 'package:foody/src/widgets/feature_products.dart';
import 'package:foody/src/widgets/small_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Near By',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 3: Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
//        child: _widgetOptions.elementAt(_selectedIndex),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    "What would you like to eat?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {
                        print("button clicked");
                      },
                    ),
                    Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14, 4, 14, 4),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(1, 1),
                        blurRadius: 4),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find Food or Restaurant',
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: EdgeInsets.fromLTRB(14, 4, 14, 4),
              child: CustomText(
                text: 'Featured',
                weight: FontWeight.bold,
              ),
            ),
            FeatureProducts(),
            Padding(
              padding: EdgeInsets.only(left: 14, top: 14),
              child: CustomText(
                text: 'Best Food',
                weight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14, top: 14, right: 14),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'images/hamburger.jpg',
                        height: 230,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.near_me),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                                Text("4.5"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.0),
                              ],
                            )),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(14, 8, 8, 8),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Pancakes \n',
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'by: ', style: TextStyle(color: grey)),
                              TextSpan(
                                  text: 'Pizza Hut',
                                  style: TextStyle(color: white)),
                            ], style: TextStyle(color: black)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 14, 0),
                          child: CustomText(text: '\$12.99', weight: FontWeight.bold, color: white,),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: black,
              ),
              title: CustomText(text: 'Home')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.near_me,
                color: black,
              ),
              title: CustomText(text: 'Near By')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: black,
              ),
              title: CustomText(text: 'Cart')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: black),
              title: CustomText(text: 'Account'))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
