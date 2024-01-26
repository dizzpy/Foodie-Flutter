import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';

class cardItem extends StatelessWidget {
  const cardItem({
    required this.itemImagePath,
    required this.cardTitle,
    required this.duration,
    required this.imgBgColor,
    required this.price,
  });

  final String itemImagePath;
  final Color imgBgColor;
  final String cardTitle;
  final String duration;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: 10.0), // Add top and bottom margins
      padding: EdgeInsets.symmetric(horizontal: 10.81),
      child: Column(
        children: [
          Container(
            child: Center(
              child: Image.asset(itemImagePath),
            ),
            margin: EdgeInsets.fromLTRB(0, 10.81, 0, 0),
            width: 158.95,
            height: 94.07,
            decoration: ShapeDecoration(
              color: imgBgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
          ),
          SizedBox(height: 10.81),
          // Card title
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(
                    color: Color(0xFF363636),
                    fontSize: 18.38,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                // time
                Text(
                  duration,
                  style: TextStyle(
                    color: colorSecondaryBlack,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(height: 7.0),
                //price and add button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // price
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
                    // add button
                    Container(
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
                  ],
                )
              ],
            ),
          )
        ],
      ),
      width: 180.58,
      height: 216.26,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 68.12,
            offset: Offset(0, 1.08),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}
