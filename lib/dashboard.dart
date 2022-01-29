import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static String id = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Dashboard'),
          backgroundColor: Colors.green,
        ),
        drawer: DrawerMenu(),
        body: Column(
          children: [
            Container(
              height: height * 0.15,
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(width * 0.015),
                    child: Text(
                      'RIDER',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Padding(
                    padding: EdgeInsets.all(width * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Balance',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '0.00',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Order Completed',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.009),
                color: Colors.grey,
              ),
              child: Text(
                'Assigned Orders',
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.009),
                color: Colors.grey,
              ),
              child: Text(
                'No Orders Yet!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
