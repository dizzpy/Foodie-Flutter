import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';

class mainHeadingText extends StatelessWidget {
  const mainHeadingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Find the ',
            style: TextStyle(
              color: colorMainBlack,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Best\nFood',
            style: TextStyle(
              color: colorMainRed,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' Around You',
            style: TextStyle(
              color: colorMainBlack,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
