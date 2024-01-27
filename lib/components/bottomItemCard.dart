import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';

class bottomCardItem extends StatelessWidget {
  const bottomCardItem(
      {required this.foodName,
      required this.duration,
      required this.price,
      required this.imagePath});

  final String foodName;
  final String duration;
  final String price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 68.12,
            offset: Offset(0, 1.08),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 10, 11),
              child: Icon(
                Icons.add,
                color: colorWhite,
              ),
              width: 36.76,
              height: 36.76,
              decoration: ShapeDecoration(
                color: Color(0xFFFF6A6A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.89),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: Image.asset(imagePath),
                width: 114,
                height: 114,
                decoration: ShapeDecoration(
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 68.12,
                      offset: Offset(0, 1.08),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Color.fromARGB(255, 244, 255, 239),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.65),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 18.38,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      duration,
                      style: TextStyle(
                        color: Color(0xFF909FA7),
                        fontSize: 12.98,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\$',
                            style: TextStyle(
                              color: Color(0xFFFF6A6A),
                              fontSize: 17.30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: price,
                            style: TextStyle(
                              color: colorMainRed,
                              fontSize: 19.46,
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
