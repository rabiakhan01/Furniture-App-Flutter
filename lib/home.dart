import 'package:doctor/bedroom.dart';
import 'package:doctor/homePage.dart';
import 'package:doctor/kitchen.dart';
import 'package:doctor/livingroom.dart';
import 'package:doctor/office.dart';
import 'package:doctor/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BlogPost.dart';
import 'contact_us.dart';
import 'favourit.dart';
import 'models/Items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: Column(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                height: 226,
                width: 460,
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage("assets/home1.jpg"),
                  fit: BoxFit.fill,
                  opacity: 150,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "We are here to Serve you & give you a ",
                        style: TextStyle(
                          fontFamily: 'Tinos',
                          fontSize: 17,
                          color: Color(0xFFEFEFEF),
                        ),
                      ),
                      Text(
                        "Better & Reliable Furniture to make ",
                        style: TextStyle(
                          fontFamily: 'Tinos',
                          fontSize: 17,
                          color: Color(0xFFEFEFEF),
                        ),
                      ),
                      Text(
                        "your home a Fairy land as you Dreamed ",
                        style: TextStyle(
                          fontFamily: 'Tinos',
                          fontSize: 17,
                          color: Color(0xFFEFEFEF),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 29),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                child: Image(
                                  image:
                                      AssetImage("assets/icons8-heart-50.png"),
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              Text(
                                "A one Million+ happy users",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                child: Image(
                                  image:
                                      AssetImage("assets/icons8-heart-50.png"),
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 440.8,
                  width: 460,
                ),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage("assets/home2.jpg"),
                    fit: BoxFit.fill,
                    opacity: 150,
                  ),
                ),
                child: GridView.extent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 7.0,
                  mainAxisSpacing: 5.0,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => BedRoom())),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          constraints: const BoxConstraints.expand(
                            height: 200,
                            width: 200,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                child: Image(
                                  image: AssetImage("assets/white bed.png"),
                                  height: 148,
                                  width: 150,
                                ),
                              ),
                              Text(
                                "Bedroom Furniture",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              Text(
                                "6 Item",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Office())),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          constraints: const BoxConstraints.expand(
                            height: 200,
                            width: 200,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                child: Image(
                                  image: AssetImage("assets/white-chair.png"),
                                  height: 138,
                                  width: 150,
                                ),
                              ),
                              Text(
                                "Office Furniture",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              Text(
                                "8 Item",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LivingRoom())),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          constraints: const BoxConstraints.expand(
                            height: 200,
                            width: 200,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                child: Image(
                                  image: AssetImage("assets/white-sofa.png"),
                                  height: 138,
                                  width: 150,
                                ),
                              ),
                              Text(
                                "Living Room Furniture",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              Text(
                                "7 Item",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Kitchen())),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          constraints: const BoxConstraints.expand(
                            height: 200,
                            width: 200,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                child: Image(
                                  image: AssetImage("assets/kitchen-white.png"),
                                  height: 138,
                                  width: 150,
                                ),
                              ),
                              Text(
                                "Kitchen Furniture",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              Text(
                                "7 Item",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// child: GridView.builder(
// itemCount: 4,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// crossAxisSpacing: 7.0,
// mainAxisSpacing: 5.0
// ),
// itemBuilder: (BuildContext context, int index){
// return   GestureDetector(
// onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DetailScreen())),
// child: Padding(
// padding: const EdgeInsets.only(left:5, right: 5),
// child: Stack(
// children: [
// Container(
// // constraints: const BoxConstraints.expand(
// // height: 200,
// width: 200,
// ),
// decoration: const BoxDecoration(
// color: Colors.grey,
// borderRadius: BorderRadius.all(Radius.circular(30),),
//
// ),
// child: Column(
// children: [
// SizedBox(
// child: Image(image: AssetImage(homeItem.listofmodel[index].URL),
// height: 148,
// width: 150,
// ),
// ),
// Text(homeItem.listofmodel[index].name,style: const TextStyle(
// fontFamily: 'Tinos',
// color: Color(0xFFEFEFEF),
// ),),
// Text(homeItem.listofmodel[index].item,style: const TextStyle(
// fontFamily: 'Tinos',
// color: Color(0xFFEFEFEF),
// ),),
// ],
// ),
// ),
// ],
// ),
// ),
//
// );
//
// },
// ),
