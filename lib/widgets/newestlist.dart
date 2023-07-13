import 'package:flutter/material.dart';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SizeConfig {
  double heightSize(BuildContext context, double value) {
    value /= 100;
    value = MediaQuery.of(context).size.height * value;
    if (value > 150) value = 150;
    return value;
  }

  double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }
}

class Newslist extends StatelessWidget {
  List<String> images = [
    'pizza.jpg',
    'chicken.jpg',
    'sandwitch.jpg',
    'nan.jpg',
    'paneer.jpg',
    'ice.jpg',
    'manchurian.jpg',
    'burger.jpg',
    'biriyani.jpg',
    'drink.jpg',
  ];
  List<String> title = [
    "Hot Pizza",
    "Drumstick",
    "Chicken Sandwich",
    "Butter Nun",
    "Sahi Paneer",
    "Icecream",
    "Chicken Manchurian",
    "Chicken Burger",
    "Hazzi Briyani",
    "MockTail"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            //single item
            for (int i = 0; i < images.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                    width: SizeConfig().widthSize(context, 95.0),
                    height: SizeConfig().heightSize(context, 30.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "itemPage");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assests/${images[i]}',
                                  width: 120,
                                  height: 150,
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.black,
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "${title[i]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text(
                                  "Taste burger we provide tastey food",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize: 10,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (index) {},
                                ),
                                Text(
                                  '₹ 30',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 4),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.amber,
                                    size: 26,
                                  ),
                                  Icon(
                                    CupertinoIcons.cart,
                                    color: Colors.amber,
                                    size: 26,
                                  )
                                ],
                              )),
                        )
                      ],
                    )),
              )
          ],
        ),
      ),
    );
  }
}
