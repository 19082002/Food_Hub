import 'package:clippy_flutter/arc.dart';
import 'package:enjoyfood/widgets/appbarwidgets.dart';
import 'package:flutter/material.dart';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:enjoyfood/widgets/cartnavigation.dart';
import 'package:enjoyfood/widgets/drawer.dart';

class Itembtmnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Total",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      SizedBox(width: 15),
                      Text("100",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          )),
                    ],
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "cartPage");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 13, horizontal: 15)),
                      ),
                      icon: Icon(
                        CupertinoIcons.cart,
                        color: Colors.black,
                      ),
                      label: Text("Add to cart",
                          style: TextStyle(
                            color: Colors.black,
                          )))
                ])));

    ;
  }
}
