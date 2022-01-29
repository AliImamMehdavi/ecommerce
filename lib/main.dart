import 'package:ecommerce/chng_pass.dart';
import 'package:ecommerce/dashboard.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';

import 'accepted_orders.dart';
import 'cmpl_orders.dart';
import 'dashboard.dart';
import 'drawer.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Menu',
      initialRoute: Login.id,
      routes: {
        Accepted.id: (BuildContext context) => Accepted(),
        Delivered.id: (BuildContext context) => Delivered(),
        Profile.id: (BuildContext context) => Profile(),
        ChangePass.id: (BuildContext context) => ChangePass(),
        Dashboard.id: (BuildContext context) => Dashboard(),
        Login.id: (BuildContext context) => Login(),
        DrawerMenu.id: (BuildContext context) => DrawerMenu(),
      },
    );
  }
}
