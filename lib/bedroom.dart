import 'package:doctor/BlogPost.dart';
import 'package:doctor/contact_us.dart';
import 'package:doctor/favourit.dart';
import 'package:doctor/firstTab.dart';
import 'package:doctor/profile.dart';
import 'package:doctor/secondTab.dart';
import 'package:doctor/thirdTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class BedRoom extends StatefulWidget {
  const BedRoom({Key? key}) : super(key: key);

  @override
  State<BedRoom> createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  @override
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black54,
            actions: [
              InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Favourit())),
                child: Icon(Icons.favorite),
              ),
            ],
            title: Row(
              children: [
                Text(
                  "BedRoom furniture",
                  style: TextStyle(
                    fontFamily: "Tinos",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Icon(Icons.shopping_cart),
                ),
              ],
            ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Bed"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Dresser"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("CupBoard"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            elevation: 5.0,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey.shade500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/profile-picture.jpeg"),
                          radius: 40.0,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Rabia Khan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 23.0,
                                fontFamily: "Tinos"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'rabiakham789@gmail.com',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Tinos"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                //Here you place your menu items
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home', style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => homepage())),
                ),
                Divider(height: 3.0),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Profile', style: TextStyle(fontSize: 18)),
                  onTap: () {
                    // Here you can give your route to navigate
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Contact Us', style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Contact())),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('My WishList', style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Favourit())),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile', style: TextStyle(fontSize: 18)),
                  onTap: () =>
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Profile())),
                ),
                ListTile(
                  leading: Icon(Icons.mode),
                  title: Text('Blog', style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => BlogPost())),
                ),
                ListTile(
                  leading: Icon(Icons.close),
                  title: Text('Close Menu', style: TextStyle(fontSize: 18)),
                  onTap: () {
                    // to close drawer programatically..
                    Navigator.of(context).pop;
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          ),
        ),
      ),
    );
  }
}
