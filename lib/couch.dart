import 'package:doctor/models/Items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DetailScreen.dart';
import 'cart.dart';
import 'models/favourit_provide.dart';

class Couch extends StatefulWidget {
  const Couch({Key? key}) : super(key: key);

  @override
  State<Couch> createState() => _CouchState();
}

class _CouchState extends State<Couch> {
  List<int> selectedItem9 = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        child: SafeArea(
          child: ListView.builder(
              itemCount: couch.listofcouch.length,
              itemBuilder: (BuildContext context, index) {
                return Consumer<FavouritItemProvider9>(
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () {
                        // 9
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              // TODO: Replace return with return RecipeDetail()
                              return DetailScreen9(
                                item8: couch.listofcouch[index],
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(
                          height: 400,
                          width: 400,
                        ),
                        decoration: BoxDecoration(color: Colors.black),
                        child: Column(
                          children: [
                            Image.asset(
                              couch.listofcouch[index].URL,
                              height: 200,
                              width: 390,
                              fit: BoxFit.fitWidth,
                            ),
                            Text(
                              couch.listofcouch[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Tinos",
                                  fontSize: 15),
                            ),
                            Text(
                              couch.listofcouch[index].price,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: "Tinos",
                                  fontSize: 25),
                            ),
                            IconButton(
                              onPressed: () {
                                if (value.selectedItem9.contains(index)) {
                                  value.removeItem(index);
                                } else {
                                  value.addItem(index);
                                }
                              },
                              icon: Icon(
                                value.selectedItem9.contains(index)
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 350,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius: BorderRadius.circular(5)),
                                    primary: Color(0xFF434343),
                                  ),
                                  onPressed: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart())),
                                  child: const Text(
                                    "Add To Cart",
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
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}
