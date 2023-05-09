import 'package:doctor/favourit.dart';
import 'package:doctor/models/Items.dart';
import 'package:doctor/models/favourit_provide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DetailScreen.dart';
import 'cart.dart';
import 'homePage.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);
  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  List<int> selectedItem = [];
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
              itemCount: homeItem.listofmodel.length,
              itemBuilder: (BuildContext context, index) {
                return Consumer<FavouritItemProvider>(
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () {
                        // 9
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              // TODO: Replace return with return RecipeDetail()
                              return DetailScreen(
                                item: homeItem.listofmodel[index],
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
                            Image.asset(homeItem.listofmodel[index].URL,
                              height: 200,
                              width: 390,
                              fit: BoxFit.fitWidth,
                            ),
                            Text(
                              homeItem.listofmodel[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Tinos",
                                  fontSize: 15),
                            ),
                            Text(
                              homeItem.listofmodel[index].price,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: "Tinos",
                                  fontSize: 25),
                            ),
                            IconButton(
                              onPressed: () {
                                if (value.selectedItem.contains(index)) {
                                  value.removeItem(index);
                                } else {
                                  value.addItem(index);
                                }

                              },
                              icon: Icon(
                                value.selectedItem.contains(index)
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
