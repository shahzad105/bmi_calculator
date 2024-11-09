import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label ?? '', style: KLabelTextStyle),
      ],
    );
  }
}
