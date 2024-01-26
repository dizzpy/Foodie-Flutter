import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';
import 'package:foodie/components/searchBar.dart';
import 'package:foodie/components/headingText.dart';
import 'package:foodie/components/menuItem.dart';
import 'package:foodie/components/foodItem.dart';
import 'package:foodie/components/titleHeadingRow.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unnamed Road',
          style: TextStyle(
            color: colorSecondaryBlack,
            fontSize: 20,
          ),
        ),
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
              Icons.menu,
              color: colorSecondaryBlack,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Profile ');
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              width: 50,
              height: 50,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('images/profile.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(58),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 16.0),
                mainHeadingText(),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    searchBar(),
                  ],
                ),
                SizedBox(height: 20.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MenuItem(
                        backColor: colorMainRed,
                        labelName: 'Noodless',
                        labelTextColor: colorWhite,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      MenuItem(
                        backColor: colorLightGrey,
                        labelName: 'Sushi',
                        labelTextColor: colorMainBlack,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      MenuItem(
                        backColor: colorLightGrey,
                        labelName: 'Ramen',
                        labelTextColor: colorMainBlack,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                titleHeadingRow(heading: 'Populer'),
                SizedBox(height: 30.0),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Color(0xFFFFFBFE),
                      child: Row(
                        children: [
                          cardItem(
                            itemImagePath: 'images/foodItems/burger.png',
                            cardTitle: 'Big Mac Burger',
                            duration: '20 min',
                            imgBgColor: Color(0xFFFFF9EF),
                            price: '45.23',
                          ),
                          SizedBox(width: 20),
                          cardItem(
                            itemImagePath: 'images/foodItems/wings.png',
                            cardTitle: 'Chicken Pieces',
                            duration: '18 min',
                            imgBgColor: Color(0xFFFFF9EF),
                            price: '34.59',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                titleHeadingRow(heading: 'Top if the week'),
                SizedBox(height: 20),
                Container(
                  width: 334,
                  height: 136,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 68.12,
                        offset: Offset(0, 1.08),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
