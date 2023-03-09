import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color textColor;

  const IconAndTextWidget(
      {required this.icon,
      required this.iconColor,
      required this.text,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 10,
        ),
        SmallText(
          text: text,
          color: textColor,
        ),
      ],
    );
  }
}
