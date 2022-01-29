import 'package:flutter/material.dart';

import 'drawer.dart';

class Delivered extends StatefulWidget {
  const Delivered({Key? key}) : super(key: key);
  static String id = 'completed_orders';
  @override
  _DeliveredState createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Completed Orders'),
        backgroundColor: Colors.green,
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Container(
            color: Colors.grey.shade200,
            margin: EdgeInsets.all(width * 0.05),
            height: height * 0.07,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.29, top: height * 0.025),
              child: Text(
                'Shipped on: 2021/08/31',
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
