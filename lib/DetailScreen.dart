import 'package:doctor/bedroom.dart';
import 'package:doctor/cart.dart';
import 'package:doctor/livingroom.dart';
import 'package:doctor/models/Items.dart';
import 'package:doctor/office.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final homeItem item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BedRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item.name + " " + widget.item.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen2 extends StatefulWidget {
  final dresser item1;
  const DetailScreen2({Key? key, required this.item1}) : super(key: key);

  @override
  State<DetailScreen2> createState() => _DetailScreen2State();
}

class _DetailScreen2State extends State<DetailScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BedRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item1.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item1.name + " " + widget.item1.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen3 extends StatefulWidget {
  final cupboard item2;
  const DetailScreen3({Key? key, required this.item2}) : super(key: key);

  @override
  State<DetailScreen3> createState() => _DetailScreen3State();
}

class _DetailScreen3State extends State<DetailScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BedRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item2.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item2.name + " " + widget.item2.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen4 extends StatefulWidget {
  final officeChair item3;
  const DetailScreen4({Key? key, required this.item3}) : super(key: key);

  @override
  State<DetailScreen4> createState() => _DetailScreen4State();
}

class _DetailScreen4State extends State<DetailScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Office())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item3.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item3.name + " " + widget.item3.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen5 extends StatefulWidget {
  final officeSofas item4;
  const DetailScreen5({Key? key, required this.item4}) : super(key: key);

  @override
  State<DetailScreen5> createState() => _DetailScreen5State();
}

class _DetailScreen5State extends State<DetailScreen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Office())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item4.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item4.name + " " + widget.item4.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen6 extends StatefulWidget {
  final meetingRoom item5;
  const DetailScreen6({Key? key, required this.item5}) : super(key: key);

  @override
  State<DetailScreen6> createState() => _DetailScreen6State();
}

class _DetailScreen6State extends State<DetailScreen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item5.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item5.name + " " + widget.item5.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen7 extends StatefulWidget {
  final sofa item6;
  const DetailScreen7({Key? key, required this.item6}) : super(key: key);

  @override
  State<DetailScreen7> createState() => _DetailScreen7State();
}

class _DetailScreen7State extends State<DetailScreen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item6.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item6.name + " " + widget.item6.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen8 extends StatefulWidget {
  final table item7;
  const DetailScreen8({Key? key, required this.item7}) : super(key: key);

  @override
  State<DetailScreen8> createState() => _DetailScreen8State();
}

class _DetailScreen8State extends State<DetailScreen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item7.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item7.name + " " + widget.item7.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen9 extends StatefulWidget {
  final couch item8;
  const DetailScreen9({Key? key, required this.item8}) : super(key: key);

  @override
  State<DetailScreen9> createState() => _DetailScreen9State();
}

class _DetailScreen9State extends State<DetailScreen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item8.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item8.name + " " + widget.item8.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen10 extends StatefulWidget {
  final cabnet item9;
  const DetailScreen10({Key? key, required this.item9}) : super(key: key);

  @override
  State<DetailScreen10> createState() => _DetailScreen10State();
}

class _DetailScreen10State extends State<DetailScreen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item9.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item9.name + " " + widget.item9.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen11 extends StatefulWidget {
  final chair item10;
  const DetailScreen11({Key? key, required this.item10}) : super(key: key);

  @override
  State<DetailScreen11> createState() => _DetailScreen11State();
}

class _DetailScreen11State extends State<DetailScreen11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item10.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item10.name + " " + widget.item10.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen12 extends StatefulWidget {
  final rack item11;
  const DetailScreen12({Key? key, required this.item11}) : super(key: key);

  @override
  State<DetailScreen12> createState() => _DetailScreen12State();
}

class _DetailScreen12State extends State<DetailScreen12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: 810.5,
          width: 450,
        ),
        color: Colors.grey[700],
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LivingRoom())),
                child: const Text(
                  '< Back',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFEFEFEF),
                    fontFamily: 'Tinos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 320,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 450,
                ),
                child: Image.asset(widget.item11.URL),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  widget.item11.name + " " + widget.item11.price,
                  style: TextStyle(
                    color: Color(0xFFEFEFEF),
                    fontSize: 15,
                    fontFamily: 'Tinos',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 45,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: 300,
                  height: 40,
                ),
                color: Colors.red,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      "Best Price Offer",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 20,
                        fontFamily: 'Tinos',
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/love.png",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 45),
              child: SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tinos',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
