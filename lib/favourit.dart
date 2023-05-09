
import 'package:doctor/bedroom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:doctor/models/Items.dart';
import 'DetailScreen.dart';
import 'cart.dart';
import 'models/favourit_provide.dart';

class Favourit extends StatefulWidget {
  const Favourit({Key? key}) : super(key: key);

  @override
  State<Favourit> createState() => _FavouritState();
}

class _FavouritState extends State<Favourit> {
  List<int> selectedItem = [];
  List<int> selectedItem2 = [];
  List<int> selectedItem3 = [];
  List<int> selectedItem4 = [];
  List<int> selectedItem5 = [];
  List<int> selectedItem7 = [];
  List<int> selectedItem8 = [];
  List<int> selectedItem9 = [];
  List<int> selectedItem10 = [];
  List<int> selectedItem11 = [];
  List<int> selectedItem12 = [];

  @override
  Widget build(BuildContext context) {
    final favouritProvider = Provider.of<FavouritItemProvider>(context);
    final favouritProvider2 = Provider.of<FavouritItemProvider2>(context);
    final favouritProvider3 = Provider.of<FavouritItemProvider3>(context);
    final favouritProvider4 = Provider.of<FavouritItemProvider4>(context);
    final favouritProvider5 = Provider.of<FavouritItemProvider5>(context);
    final favouritProvider6 = Provider.of<FavouritItemProvider6>(context);
    final favouritProvider7 = Provider.of<FavouritItemProvider7>(context);
    final favouritProvider8 = Provider.of<FavouritItemProvider8>(context);
    final favouritProvider9 = Provider.of<FavouritItemProvider9>(context);
    final favouritProvider10 = Provider.of<FavouritItemProvider10>(context);
    final favouritProvider11 = Provider.of<FavouritItemProvider11>(context);
    final favouritProvider12 = Provider.of<FavouritItemProvider12>(context);

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[700],
            constraints: const BoxConstraints.expand(
              height: 810.5,
              width: 450,
            ),
            child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top:50, left:0),
              child: InkWell(
              onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => BedRoom())),
      child: const Text(
        '<- My Wishlist',
        style: TextStyle(
          fontSize: 17,
          color: Color(0xFFEFEFEF),
          fontFamily: 'Tinos',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
                  ),
                   Flexible(
                     child: SafeArea(
                       child: ListView.builder(
                            shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: favouritProvider.selectedItem.length,
                              itemBuilder: (BuildContext context, index) {
                                return Consumer<FavouritItemProvider>(
                                  builder: (context, value, child) {
                                    return Container(
                                        constraints: BoxConstraints.expand(
                                          height: 450,
                                          width: 400,
                                        ),
                                        decoration: BoxDecoration(color: Colors.grey[700],
                                            border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),),
                                        child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Image(
                                                          image: AssetImage(
                                                              homeItem.listofmodel[index].URL),
                                                          height: 200,
                                                          width: 180,
                                                        ),
                                                      ),
                                                     Padding(
                                                       padding: const EdgeInsets.only(left: 10),
                                                       child: Column(
                                                         children: [
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
                                                           Text(
                                                             homeItem.listofmodel[index].price,
                                                             style: TextStyle(
                                                                 color: Colors.red,
                                                                 fontFamily: "Tinos",
                                                                 fontSize: 20),
                                                           ),
                                                           SizedBox(
                                                             height: 60,
                                                             width: 150,
                                                             child: Padding(
                                                               padding: const EdgeInsets.only(top: 16),
                                                               child: ElevatedButton(
                                                                 style: ElevatedButton.styleFrom(
                                                                   shape: RoundedRectangleBorder(
//to set border radius to button
                                                                       borderRadius:
                                                                       BorderRadius.circular(25)),
                                                                   primary: Colors.black,
                                                                 ),
                                                                 onPressed: () =>
                                                                     Navigator.pushReplacement(
                                                                         context,
                                                                         MaterialPageRoute(
                                                                             builder: (context) =>
                                                                                 Cart())),
                                                                 child: const Text(
                                                                   "Add To Cart",
                                                                   style: TextStyle(
                                                                     color: Colors.white,
                                                                     fontSize: 15,
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
                                                    ],
                                                  ),

                                                ],
                                              ),

                                    );
                                  },
                                );
                              },
                          ),
                     ),
                   ),

                  Flexible(
                    child: SafeArea(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: favouritProvider2.selectedItem2.length,
                        itemBuilder: (BuildContext context, index) {
                          return Consumer<FavouritItemProvider2>(
                            builder: (context, value, child) {
                              return Container(
                                constraints: BoxConstraints.expand(
                                  height: 500,
                                  width: 400,
                                ),
                                decoration: BoxDecoration(color: Colors.grey[700],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Image(
                                            image: AssetImage(
                                                dresser.listofdresser[index].URL),
                                            height: 200,
                                            width: 180,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Column(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  if (value.selectedItem2.contains(index)) {
                                                    value.removeItem(index);
                                                  } else {
                                                    value.addItem(index);
                                                  }
                                                },
                                                icon: Icon(
                                                  value.selectedItem2.contains(index)
                                                      ? Icons.favorite
                                                      : Icons.favorite_border,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              Text(
                                                dresser.listofdresser[index].price,
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontFamily: "Tinos",
                                                    fontSize: 20),
                                              ),
                                              SizedBox(
                                                height: 60,
                                                width: 150,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 16),
                                                  child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
//to set border radius to button
                                                          borderRadius:
                                                          BorderRadius.circular(25)),
                                                      primary: Colors.black,
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Cart())),
                                                    child: const Text(
                                                      "Add To Cart",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
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
                                      ],
                                    ),

                                  ],
                                ),

                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),

//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider3.selectedItem3.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider3>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 cupboard.listofcupboard[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem3.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem3.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 cupboard.listofcupboard[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider4.selectedItem4.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider4>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 officeChair.listofofficeChair[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem4.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem4.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 officeChair.listofofficeChair[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider5.selectedItem5.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider5>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 officeSofas.listofofficeSofas[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem5.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem5.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 officeSofas.listofofficeSofas[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider6.selectedItem6.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider6>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 meetingRoom.listofmeetingRoom[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem6.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem6.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 meetingRoom.listofmeetingRoom[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider7.selectedItem7.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider7>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 sofa.listofsofa[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem7.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem7.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 sofa.listofsofa[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider8.selectedItem8.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider8>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 table.listoftable[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem8.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem8.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 table.listoftable[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider9.selectedItem9.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider9>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 couch.listofcouch[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem9.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem9.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 couch.listofcouch[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider10.selectedItem10.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider10>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 cabnet.listofcabnet[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem10.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem10.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 cabnet.listofcabnet[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider11.selectedItem11.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider11>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 chair.listofchair[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem11.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem11.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 chair.listofchair[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     child: SafeArea(
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: favouritProvider12.selectedItem12.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Consumer<FavouritItemProvider12>(
//                             builder: (context, value, child) {
//                               return Container(
//                                 constraints: BoxConstraints.expand(
//                                   height: 500,
//                                   width: 400,
//                                 ),
//                                 decoration: BoxDecoration(color: Colors.grey[700],
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2,
//                                   ),),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Image(
//                                             image: AssetImage(
//                                                 rack.listofrack[index].URL),
//                                             height: 200,
//                                             width: 180,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 10),
//                                           child: Column(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   if (value.selectedItem12.contains(index)) {
//                                                     value.removeItem(index);
//                                                   } else {
//                                                     value.addItem(index);
//                                                   }
//                                                 },
//                                                 icon: Icon(
//                                                   value.selectedItem12.contains(index)
//                                                       ? Icons.favorite
//                                                       : Icons.favorite_border,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 rack.listofrack[index].price,
//                                                 style: TextStyle(
//                                                     color: Colors.red,
//                                                     fontFamily: "Tinos",
//                                                     fontSize: 20),
//                                               ),
//                                               SizedBox(
//                                                 height: 60,
//                                                 width: 150,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.only(top: 16),
//                                                   child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                       shape: RoundedRectangleBorder(
// //to set border radius to button
//                                                           borderRadius:
//                                                           BorderRadius.circular(25)),
//                                                       primary: Colors.black,
//                                                     ),
//                                                     onPressed: () =>
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                     Cart())),
//                                                     child: const Text(
//                                                       "Add To Cart",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 15,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontFamily: 'Tinos',
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//
//                                   ],
//                                 ),
//
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
                ],
            ),
          ),
        ),
    );
  }
}
