import 'package:doctor/models/Blog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact_us.dart';
import 'favourit.dart';
import 'homePage.dart';
import 'models/Blog.dart';

class BlogPost extends StatefulWidget {
  const BlogPost({Key? key}) : super(key: key);

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
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
                onTap: () {
                  // to close drawer programatically..
                },
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
        body: SafeArea(
          child: ListView.builder(
            itemCount: Blog.listofblog.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                constraints: BoxConstraints.expand(
                  height: 500,
                  width: 400,
                ),
                decoration: BoxDecoration(color: Colors.grey[700]),
                child: Column(
                  children: [
                    Image.asset(
                      Blog.listofblog[index].imageURL,
                      height: 200,
                      width: 390,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      Blog.listofblog[index].information,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Tinos",
                          fontSize: 15),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
