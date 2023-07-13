import 'package:flutter/material.dart';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SizeConfig {
  double heightSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.height * value;
  }

  double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }
}

class Popularlist extends StatelessWidget {
  List<String> images = [
    'drink.jpg',
    'burger.jpg',
    'manchurian.jpg',
    'pizza.jpg',
    'biriyani.jpg',
    'sandwitch.jpg',
    'fry.jpg',
    'shake.jpg',
    'ice.jpg',
    'nan.jpg',
    'chow.jpg',
    'roll.jpg',
    'paneer.jpg',
    'cutlet.jpg',
    'lassi.jpg',
    'chicken.jpg',
  ];
  List<String> title = [
    "MockTail",
    "Chicken Burger",
    "Chicken Manchurian",
    "Hot Pizza",
    "Hazzi Briyani",
    "Chicken Sandwich",
    "French Fry",
    "Chocolate shake",
    "Icecream",
    "Butter Nun",
    "Chowmin",
    "Eggroll",
    "Sahi Paneer",
    "Veg Cutlet",
    "Dohi Lassi",
    "Drumstick"
  ];
  List<String> cat = [
    "Bevarage",
    "Snacks",
    "Bengali",
    "Chineese",
    "Italian",
    "South Indian",
    "Chineese",
    "Desserts",
    "Desserts",
    "Bengali",
    "Chineese",
    "Chineese",
    "Bengali",
    "Bengali",
    "Desserts",
    "Indian"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            //single item
            for (int i = 0; i < images.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Container(
                    padding: EdgeInsets.all(8),
                    width: 170,
                    height: 270,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[700]!,
                            spreadRadius: 1,
                            blurRadius: 6,
                          )
                        ]),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "itemPage");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assests/${images[i]}',
                                  // width:50,
                                  height: 150,
                                ),
                              ),
                            ),
                            Text(
                              "${title[i]}",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "${cat[i]}",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(bottom: 2),
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.amber,
                                  size: 20,
                                ))
                          ],
                        ))),
              )
          ],
        ),
      ),
    );
  }
}
