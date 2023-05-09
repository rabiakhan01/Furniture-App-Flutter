import 'package:doctor/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'favourit.dart';
import 'home.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  int selectedPage=0;
  List <Widget> Pages=<Widget>[
    Container(
      child: Home( ),
    ),
    Container(
      child: Profile( ),
    ),
    Container(
      child: Cart( ),
    ),
    Container(
      child: Favourit( ),
    ),

  ];
  void _onPressed(int newIndex){
    setState(() {
      selectedPage=newIndex;
    });

  }

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: Theme(
            
            data: ThemeData(
                canvasColor: Colors.black54
            ),
            child: BottomNavigationBar
      (

              selectedItemColor: Colors.black,
              iconSize: 30,

        currentIndex: selectedPage,
        onTap: _onPressed,

        items: const <BottomNavigationBarItem>
        [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: 'Home', ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile', ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart', ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourit', ),
        ],

      ),
          ),
      body: Pages[selectedPage],
      ),


    );
  }

}
