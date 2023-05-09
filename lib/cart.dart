import 'package:doctor/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BlogPost.dart';
import 'contact_us.dart';
import 'favourit.dart';
import 'homePage.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black54,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage(
                      "assets/icons8-office-chair-50.png",
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Hookers Comfort",
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
                    const SizedBox(
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
                      children: const <Widget>[
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
                onTap: () =>
                    Navigator.pushReplacement(context,
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
                onTap: () =>
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Contact())),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('My WishList', style: TextStyle(fontSize: 18)),
                onTap: () =>
                    Navigator.pushReplacement(context,
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
                onTap: () =>
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => BlogPost())),
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Close Menu', style: TextStyle(fontSize: 18)),
                onTap: () {
                  // to close drawer programatically..
                  Navigator
                      .of(context)
                      .pop;
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.grey,
           child: Center(
             child: Icon(Icons.shopping_cart, size:  50,),

           ),
        ),
      ),
    );
  }
}
