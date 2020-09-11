import 'package:flutter/material.dart';
import 'package:foody/src/commons.dart';

class SmallButton extends StatelessWidget {

  final IconData icon;
  SmallButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            icon,
            size: 16,
            color: red,
          ),
        ),
      ),
    );
  }
}
