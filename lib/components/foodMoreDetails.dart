import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';

class foodMoreDetails extends StatelessWidget {
  const foodMoreDetails({
    required this.ratings,
    required this.calories,
    required this.duration,
  });

  final String ratings;
  final String calories;
  final String duration;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.star,
                color: Color(0xFFFFCC17),
              ),
              SizedBox(width: 5),
              Text(
                ratings,
                style: TextStyle(
                  color: colorSecondaryBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.local_fire_department,
                color: Color(0xFFFF6B00),
              ),
              SizedBox(width: 5),
              Text(
                calories + ' Kcal',
                style: TextStyle(
                  color: colorSecondaryBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.timer,
                color: Color(0xFF00B900),
              ),
              SizedBox(width: 5),
              Text(
                duration + ' min',
                style: TextStyle(
                  color: colorSecondaryBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}