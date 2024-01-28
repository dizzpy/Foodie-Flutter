import 'package:flutter/material.dart';
import 'package:foodie/alert/alertless.dart';
import 'package:foodie/components/foodMoreDetails.dart';
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
                            AlertDialogWidget.showAlertDialog(
                              context,
                              'Error',
                              'Item count cannot be less than 0.',
                            );
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
            SizedBox(height: 20),
            //other things
            foodMoreDetails(ratings: '4.8', calories: '150', duration: '18'),
            //item name
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Chicken Pieces',
                style: TextStyle(
                  color: colorMainBlack,
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            //item description
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget metus gravida aliquam. Nulla facilisi. Donec euismod, nisl eget aliquet ultricies, nisl nisl aliquet nisl, vitae aliquam nisl nisl',
                style: TextStyle(
                  color: colorSecondaryBlack,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            //item price
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          color: Color(0xFF4F4F4F),
                          fontSize: 16.68,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style: TextStyle(
                                color: Color(0xFFFF6A6A),
                                fontSize: 20.91,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '34.59',
                              style: TextStyle(
                                color: Color(0xFFFF6A6A),
                                fontSize: 23.52,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 32),
                  GestureDetector(
                    onTap: () {
                      AlertDialogWidget.showAlertDialog(
                        context,
                        'Succsessful',
                        'Your item added to cart.',
                      );
                    },
                    child: Container(
                        width: 200,
                        height: 60,
                        padding: EdgeInsets.fromLTRB(33, 15, 33, 15),
                        decoration: BoxDecoration(
                          color: colorMainRed,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: colorWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
