import 'package:flutter/material.dart';

import 'constants.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({Key? key}) : super(key: key);
  static String id = 'change_pass';

  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
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

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Change Password'),
              backgroundColor: Colors.green,
            ),
            body: Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Container(
                width: width * 0.8,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    TextField(
                      focusNode: myFocusNode,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(myFocusNode);
                        });
                      },
                      cursorColor: AccentColor,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AccentColor, width: 2.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        labelText: 'Current Password',
                        hintText: 'Current Password',
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? AccentColor
                                : Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextField(
                      focusNode: myFocusNode1,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(myFocusNode1);
                        });
                      },
                      cursorColor: AccentColor,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AccentColor, width: 2.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        labelText: 'New Password',
                        hintText: 'New Password',
                        labelStyle: TextStyle(
                            color: myFocusNode1.hasFocus
                                ? AccentColor
                                : Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextField(
                      focusNode: myFocusNode2,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(myFocusNode2);
                        });
                      },
                      cursorColor: AccentColor,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AccentColor, width: 2.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        labelText: 'Confirm Password',
                        hintText: 'Confirm Password',
                        labelStyle: TextStyle(
                            color: myFocusNode2.hasFocus
                                ? AccentColor
                                : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.1,
                          right: width * 0.1,
                          top: width * 0.04),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Change Password',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Roboto')),
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
            )));
  }
}
