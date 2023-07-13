import 'dart:html';

import 'package:enjoyfood/widgets/appbarwidgets.dart';
import 'package:enjoyfood/widgets/categorywidgets.dart';
import 'package:enjoyfood/widgets/drawer.dart';
import 'package:enjoyfood/widgets/newestlist.dart';
import 'package:enjoyfood/widgets/popularlist.dart';
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

  double fontSize(BuildContext context, double value) {
    value /= 100;
    value = MediaQuery.of(context).size.height * value;
    if (value > 40) value = 40;
    return value;
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Custom appbar
          Appbarwidget(),
          //search Button
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Container(
                width: double.infinity,
                // height:SizeConfig().heightSize(context, 5.0),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                            size: SizeConfig().widthSize(context, 4.0),
                            CupertinoIcons.search,
                            color: Colors.amber),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          // height: 50,
                          // width:SizeConfig().widthSize(context, 50.0) ,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Colors.white60,
                                      fontSize:
                                          SizeConfig().fontSize(context, 3.0),
                                    ),
                                    hintText: "Search for Food",
                                    border: InputBorder.none),
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig().fontSize(context, 3.0),
                                    color: Colors.white),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                            color: Colors.amber,
                            size: SizeConfig().widthSize(context, 5.0),
                            Icons.filter_list),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //category
          Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig().fontSize(context, 3.0),
                  color: Colors.amber,
                ),
              )),

          /////category display
          Categorylist(),
          //popular heading
          Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Popular items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig().fontSize(context, 3.0),
                  color: Colors.amber,
                ),
              )),

          //popular items list
          Popularlist(),
          //Newest items
          Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Newest items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig().fontSize(context, 3.0),
                  color: Colors.amber,
                ),
              )),
          //newest list
          Newslist()
        ],
      ),

      //drawer
      drawer: Drawerwidget(),

      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[600]!,
                spreadRadius: 1,
                blurRadius: 6,
                // offset: Offset(0, 0),
              )
            ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.amber,
            size: 26,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
