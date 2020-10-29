import 'package:flutter/material.dart';
import '../screens/input_page.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget childCard;
  final Function onTap;

  ReusableCard({@required this.color, this.childCard, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}