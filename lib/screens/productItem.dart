import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            print('Home Button Pressed');
          },
          child: Container(
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 1.5,
                color: colorSecondaryBlack,
              ),
            ),
            child: Icon(
              Icons.arrow_back,
              color: colorSecondaryBlack,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Home Button Pressed');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              height: 42.0,
              width: 42.0,
              margin: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(
                  width: 1.5,
                  color: colorSecondaryBlack,
                ),
              ),
              child: Icon(
                Icons.favorite,
                color: colorMainRed,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              child: Image.asset(
                'images/foodItems/wings.png',
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(20)),
              height: 260,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
