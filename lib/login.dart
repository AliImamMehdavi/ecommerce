import 'package:flutter/material.dart';

import 'constants.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String id = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var width, height;

  FocusNode myFocusNode = new FocusNode(),
      myFocusNode1 = new FocusNode(),
      myFocusNode2 = new FocusNode();

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    myFocusNode1 = FocusNode();
    myFocusNode2 = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    myFocusNode1.dispose();
    myFocusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    bool _obscureText = true;
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.only(left: width * 0.1),
      child: SingleChildScrollView(
        child: Container(
          width: width * 0.8,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Image.asset(
                'images/TOORI_car-01.png',
                width: width * 0.7,
                height: height * 0.3,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                focusNode: myFocusNode,
                onTap: () {
                  setState(() {
                    FocusScope.of(context).requestFocus(myFocusNode);
                  });
                },
                cursorColor: AccentColor,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AccentColor, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'Email',
                  hintText: 'Email',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? AccentColor : Colors.grey),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                focusNode: myFocusNode1,
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                    FocusScope.of(context).requestFocus(myFocusNode1);
                  });
                },
                cursorColor: AccentColor,
                obscureText: _obscureText,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AccentColor, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'Password',
                  hintText: 'Password',
                  labelStyle: TextStyle(
                      color: myFocusNode1.hasFocus ? AccentColor : Colors.grey),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                children: [
                  Text('Forgot Password?'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.1, right: width * 0.1, top: width * 0.04),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Dashboard.id);
                  },
                  child: Text('Sign In',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Roboto')),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width * 0.7, height * 0.07),
                    primary: primaryColor,
                    shape: StadiumBorder(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    )));
  }
}
