import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedIconButton extends StatelessWidget {

  final IconData iconData;
  final Function onPressed;

  RoundedIconButton({@required this.iconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kRoundedButtonFillColor,
    );
  }
}