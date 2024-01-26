import 'package:flutter/material.dart';
import 'package:foodie/const/color.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: colorLightGrey,
          borderRadius: BorderRadius.circular(60.0),
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: colorSecondaryBlack),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Your Fav Food',
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(Icons.settings, color: colorSecondaryBlack),
          ],
        ),
      ),
    );
  }
}
