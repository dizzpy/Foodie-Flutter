import 'package:flutter/material.dart';
// import 'package:foodie/const/color.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    required this.backColor,
    required this.labelTextColor,
    required this.labelName,
    required this.imagePath,
  });

  final Color backColor;
  final Color labelTextColor;
  final String labelName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            labelName,
            style: TextStyle(
              color: labelTextColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
