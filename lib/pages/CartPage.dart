import 'dart:js_util';

import 'package:enjoyfood/widgets/appbarwidgets.dart';
import 'package:enjoyfood/widgets/cartnavigation.dart';
import 'package:enjoyfood/widgets/drawer.dart';
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

class CartPage extends StatelessWidget {
  List<String> images = [
    'pizza.jpg',
    'shake.jpg',
  ];
  List<String> title = ["Hot Pizza", "Chocolate Shake"];
  List<String> rps = [
    "50",
    "30",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbarwidget(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                    left: 10,
                  ),
                  child: Text("Order List",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.amber,
                      )),
                ),
                for (int i = 0; i < 2; i++)
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 9),
                      child: Container(
                        width: SizeConfig().widthSize(context, 95.0),
                        height: SizeConfig().heightSize(context, 20.0),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[700]!,
                                spreadRadius: 1,
                                blurRadius: 6,
                              )
                            ]),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assests/${images[i]}',
                                  width: 80,
                                  height: 100,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                // width: ,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${title[i]}",
                                          style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                      Text(" Taste Hot Pizza",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          )),
                                      Text("${rps[i]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.amber,
                                          ))
                                    ]),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Container(
                                  
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[700]!,
                                          spreadRadius: 1,
                                          blurRadius: 6,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          CupertinoIcons.plus,
                                          color: Colors.amber,
                                        ),
                                        Text("1",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.amber,
                                            )),
                                        Icon(
                                          CupertinoIcons.minus,
                                          color: Colors.amber,
                                        ),
                                      ]),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Container(
                      padding: EdgeInsets.all(20),
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
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "items: ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                        ),
                        Divider(
                          color: Colors.amber,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub-total",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "80",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                        ),
                        Divider(
                          color: Colors.amber,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                        ),
                        Divider(
                          color: Colors.amber,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "100",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                  ),
                                )
                              ]),
                        ),
                      ]),
                    ))
              ],
            ),
          ))
        ],
      ),
      drawer: Drawerwidget(),
      bottomNavigationBar: cartnav(),
    );
  }
}
