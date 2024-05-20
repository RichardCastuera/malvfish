import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.onPress,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.iconData,
    required this.title,
    required this.bgColor,
    required this.textColor,
  });

  final Function() onPress;
  final double horizontalPadding;
  final double verticalPadding;
  final IconData iconData;
  final String title;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        backgroundColor: bgColor,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: white,
            size: height * 0.05,
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontFamily: 'ProximaNova',
              fontSize: height * 0.03,
            ),
          )
        ],
      ),
    );
  }
}
