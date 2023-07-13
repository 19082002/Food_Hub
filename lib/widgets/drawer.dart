import 'package:flutter/material.dart';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SizeConfig {
  double fontSize(BuildContext context, double value) {
    value /= 100;
    value = MediaQuery.of(context).size.height * value;
    if (value > 30) value = 30;
    return value;
  }
}

class Drawerwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  accountName: Text("Sananda",
                      style: TextStyle(
                          fontSize: SizeConfig().fontSize(context, 3.0),
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  accountEmail: Text("sanandadey2002@gmail.com",
                      style: TextStyle(
                          fontSize: SizeConfig().fontSize(context, 2.0),
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assests/avat.jpg"),
                  ),
                )),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.amber,
              ),
              title: Text("Home",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.amber,
              ),
              title: Text("My Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.cart_fill,
                color: Colors.amber,
              ),
              title: Text("My Orders",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.amber,
              ),
              title: Text("My wish_list ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.amber,
              ),
              title: Text("Settings",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.amber,
              ),
              title: Text("Log Out",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ],
        ));
  }
}
