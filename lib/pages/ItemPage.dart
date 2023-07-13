import 'package:clippy_flutter/arc.dart';
import 'package:enjoyfood/widgets/appbarwidgets.dart';
import 'package:enjoyfood/widgets/itembotomnavbar.dart';
import 'package:flutter/material.dart';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:enjoyfood/widgets/cartnavigation.dart';
import 'package:enjoyfood/widgets/drawer.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            Appbarwidget(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "assests/pizza.jpg",
                height: 300,
                // width:double.infinity,
              ),
            ),
            Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30,
                child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 69, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
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
                                      "₹  30",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Hot Pizza",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                      width: 90,
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 20,
                                            color: Colors.amber,
                                          ),
                                          Text("1",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.amber,
                                              )),
                                          Icon(
                                            CupertinoIcons.plus,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text(
                                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery time",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Icon(
                                          CupertinoIcons.clock,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Text(
                                        "30 minutes",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))))
          ],
        ),
      ),
      drawer: Drawerwidget(),
      bottomNavigationBar: Itembtmnav(),
    );
  }
}
