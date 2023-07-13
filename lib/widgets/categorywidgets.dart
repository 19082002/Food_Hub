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

class Categorylist extends StatelessWidget {
  List<String> images = [
    'drink.jpg',
    'burger.jpg',
    'biriyani.jpg',
    'manchurian.jpg',
    'pizza.jpg',
    'paneer.jpg',
    'roll.jpg',
    'sandwitch.jpg',
    'shake.jpg',
    'lassi.jpg',
    'ice.jpg',
    'fry.jpg',
    'cutlet.jpg',
    'chow.jpg',
    'chicken.jpg',
    'nan.jpg',
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
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 7),
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
                    child: Image.asset(
                      'assests/${images[i]}',
                      width: 50,
                      height: 50,
                    )),
              )
          ],
        ),
      ),
    );
  }
}
