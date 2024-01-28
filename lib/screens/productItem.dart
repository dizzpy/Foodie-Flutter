import 'package:flutter/material.dart';
import 'package:foodie/alert/alertless.dart';
import 'package:foodie/const/color.dart';

class ProductItemPage extends StatefulWidget {
  const ProductItemPage({Key? key}) : super(key: key);

  @override
  _ProductItemPageState createState() => _ProductItemPageState();
}

class _ProductItemPageState extends State<ProductItemPage> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            print('Back Button Pressed');
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
              print('Favorite Button Pressed');
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
                borderRadius: BorderRadius.circular(20),
              ),
              height: 260,
              width: double.infinity,
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/imgNav.png',
            ),
            SizedBox(height: 20),
            Container(
              width: 120,
              decoration: BoxDecoration(
                color: colorMainRed,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (itemCount > 0) {
                            itemCount--;
                            print(itemCount);
                          } else {
                            // Display alert or message
                            showAlertDialog(context);
                          }
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: colorWhite,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      itemCount.toString(),
                      style: TextStyle(
                        color: colorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          itemCount++;
                          print(itemCount);
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
