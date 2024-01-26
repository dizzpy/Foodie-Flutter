import 'package:flutter/material.dart';

class titleHeadingRow extends StatelessWidget {
  const titleHeadingRow({
    required this.heading,
  });

  final String heading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: TextStyle(
            color: Color(0xFF4F4F4F),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            height: 0.09,
          ),
        ),
        Row(
          children: [
            Text(
              'See More',
              style: TextStyle(
                color: Color(0xFF909FA7),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
