import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'accepted_orders.dart';
import 'cmpl_orders.dart';
import 'dashboard.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);
  static String id = 'drawer_menu';
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  var width, height;
  static const id = 'login';
  bool _opt = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
        Container(
          height: height * 0.3,
          color: Colors.orange,
          child: Padding(
            padding: EdgeInsets.all(width * 0.031),
            child: CircleAvatar(
              radius: height * 0.2,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        ListTile(
          tileColor: Colors.white,
          title: Text('Dashboard'),
          leading: Icon(Icons.person),
          onTap: () async {
            await Navigator.popAndPushNamed(context, Dashboard.id);
          },
        ),
        SwitchListTile(
          activeColor: Colors.green,
          title: Text('Online Status'),
          value: _opt,
          onChanged: (bool value) {
            setState(() {
              _opt = value;
            });
          },
          secondary: const Icon(Icons.lightbulb_outline),
        ),
        Divider(
          thickness: height * 0.001,
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: width * 0.05, top: height * 0.01),
            child: Text('ORDERS')),
        SizedBox(
          height: height * 0.01,
        ),
        ListTile(
          tileColor: Colors.white,
          title: Text('Accepted'),
          leading: Icon(Icons.chat),
          onTap: () async {
            await Navigator.popAndPushNamed(context, Accepted.id);
          },
        ),
        ListTile(
          tileColor: Colors.white,
          title: Text('Delievered'),
          leading: Icon(Icons.call),
          onTap: () async {
            await Navigator.popAndPushNamed(context, Delivered.id);
          },
        ),
        Divider(),
        Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: width * 0.05, top: height * 0.01),
            child: Text('ACCOUNT')),
        SizedBox(
          height: height * 0.01,
        ),
        ListTile(
          tileColor: Colors.white,
          title: Text('Profile'),
          leading: Icon(Icons.chat),
          onTap: () async {
            await Navigator.popAndPushNamed(context, Profile.id);
          },
        ),
        ListTile(
          tileColor: Colors.white,
          title: Text('Logout'),
          leading: Icon(Icons.call),
          onTap: () {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
        ),
      ]),
    );
  }
}
