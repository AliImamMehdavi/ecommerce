import 'package:flutter/material.dart';

import 'drawer.dart';

class Accepted extends StatefulWidget {
  const Accepted({Key? key}) : super(key: key);
  static String id = 'accepted';
  @override
  _AcceptedState createState() => _AcceptedState();
}

class _AcceptedState extends State<Accepted> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Accepted Orders'),
              backgroundColor: Colors.green,
            ),
            drawer: DrawerMenu(),
            body: Padding(
              padding: EdgeInsets.only(left: width * 0.4, top: height * 0.05),
              child: Container(
                child: Text(
                  'No Orders Yet',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            )));
  }
}
