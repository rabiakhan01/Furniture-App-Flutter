import 'package:doctor/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BlogPost.dart';
import 'SuggestionForm.dart';
import 'favourit.dart';
import 'homePage.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
          body: Container(
            constraints: BoxConstraints.expand(
              height: 810.5,
              width: 450,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[700],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 30,
                    child: Text(
                      "Contact Information",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Tinos",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    child: Text(
                      "New Query",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: "Tinos",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons8-mail-48.png",
                          height: 32,
                          width: 32,
                        ),
                        Text(
                          "hookers@gmail.com",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Tinos",
                              color: Colors.white70,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Text(
                      "After Sale",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontFamily: "Tinos",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons8-mail-48.png",
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          "hookersSupport@gmail.com",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Tinos",
                              color: Colors.white70,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 290,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons8-phone-64.png",
                          height: 25,
                          width: 25,
                        ),
                        Text(
                          "Call",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Tinos",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 330,
                    child: Text(
                      "0344402102",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontFamily: "Tinos",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 370,
                    child: Text(
                      "For Suggestions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Tinos",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 410,
                    child: Text(
                      "For more suggestions enter the form button and fill the form",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontFamily: "Tinos",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 520,
                    left: 28,
                    child: SizedBox(
                      height: 40,
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(35)),
                          primary: Colors.black,
                        ),
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SuggestionForm())),
                        child: const Text(
                          "Fill Form",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tinos',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 620,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons8-twitter-48.png",
                              height: 35, width: 35),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons8-facebook-48.png",
                              height: 35, width: 35),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons8-linkedin-circled-48.png",
                              height: 35, width: 35),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons8-instagram-48.png",
                              height: 35, width: 35),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons8-whatsapp-48.png",
                              height: 35, width: 35),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
