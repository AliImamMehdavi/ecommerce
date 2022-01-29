import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static String id = 'profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          backgroundColor: primaryColor,
        ),
        drawer: DrawerMenu(),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: CircleAvatar(
                    radius: width * 0.09,
                  ),
                ),
                displayText('rider', primaryDarkColor),
                Padding(
                    padding: EdgeInsets.all(width * 0.01),
                    child: displayText(
                      'rider@gmail.com',
                      Colors.grey,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05, top: width * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  displayText(
                    'Bike Model',
                    Colors.grey,
                  ),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  displayText(
                    ' ',
                    primaryDarkColor,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  displayText(
                    'Bike Color',
                    Colors.grey,
                  ),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  displayText(' ', primaryDarkColor),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  displayText('Bike Registration No', Colors.grey),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  displayText(' ', primaryDarkColor),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  displayText('License No', Colors.grey),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  displayText('LVV200', primaryDarkColor),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  displayText('Address', Colors.grey),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  displayText('NIIT building,Islamabad', primaryDarkColor),
                  SizedBox(
                    height: height * 0.017,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.1, right: width * 0.1, top: width * 0.02),
              child: ElevatedButton(
                onPressed: () {},
                child: displayText('Change Password', Colors.white),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 0.01, height * 0.07),
                  primary: primaryColor,
                  shape: StadiumBorder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Text displayText(String txt, Color color) {
  return Text(
    txt,
    style: TextStyle(
        color: color, fontFamily: 'Roboto', fontWeight: FontWeight.w500),
  );
}
