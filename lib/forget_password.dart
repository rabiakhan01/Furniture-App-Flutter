import 'package:doctor/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forget_password extends StatefulWidget {
  const forget_password({Key? key}) : super(key: key);

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  @override
  final email=TextEditingController();
  final _formKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false, // this is used because in phone when we click input field it shows that your screen overlaps
        body: Column(
            children: [
              Container(
                color: Colors.grey[700],
                constraints: BoxConstraints.expand(
                  height: 810.5,
                  width: 450,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 60,
                      left: 30,
                      child: InkWell(
                        onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => loginform())),
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
                    const Positioned(
                       top:140,
                        left: 65,
                        child: Text("Forget Password",
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Tinos',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFEFEFEF),
                          ),
                        ),
                    ),

                    Positioned(
                      top: 230,
                        left: 30,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Please enter your email address after this ",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  fontSize: 17,
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              Text(
                                " you will be able to change your password",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  fontSize: 17,
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              Text(
                                " via email",
                                style: TextStyle(
                                  fontFamily: 'Tinos',
                                  fontSize: 17,
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 380, left: 33),
                      child: SizedBox(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'example@gmail.com',
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Tinos'
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.grey)),
                            filled:true,
                            fillColor: Colors.grey[200],
                          ),
                          controller: email,
                          validator: (value){
                            if((value==null || value.isEmpty) && value != 'rabiakham789@gmail.com'){
                              return 'Email is incorrect';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 450, left:60),
                      child: SizedBox(
                        width: 270,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(35),
                            ),
                            primary: Colors.black87,
                          ),
                          onPressed: () {
                            if(_formKey.currentState!.validate())
                            {
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => loginform()));
                            }
                          },
                          child: const Text("Send", style: TextStyle(
                            color: Color(0xFFEFEFEF),
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
            ],
          ),
      ),
    );
  }
}
