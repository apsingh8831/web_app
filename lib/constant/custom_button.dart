import 'package:flutter/material.dart';

import 'customPoppinsText.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.onTap,
    required this.text,
    this.color = Colors.orange,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 50,
    this.radius = 30,
  });

  final Function()? onTap;
  final String text;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height),
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      onPressed: onTap,
      child: CustomPoppinsText(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        text: text,
        color: textColor,
      ),
    );
  }
}
