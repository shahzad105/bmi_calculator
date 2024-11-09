import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  const ReusableWidget({required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
