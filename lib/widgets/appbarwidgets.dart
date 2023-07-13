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

class Appbarwidget extends StatelessWidget {
  List<String> images = [
    'cold-drink.jpg',
    'burg.jpg',
    'biriyani.jpg',
    'pizza.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[600]!,
                        spreadRadius: 1,
                        blurRadius: 6,
                      )
                    ]),
                child: Icon(
                  CupertinoIcons.bars,
                  color: Colors.amber,
                  // color:Colors.white
                ),
              ),
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600]!,
                          spreadRadius: 1,
                          blurRadius: 6,
                        )
                      ]),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.amber,
                  ),
                ))
          ],
        ));
  }
}
