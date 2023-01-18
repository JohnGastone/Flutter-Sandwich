// import 'package:flutter_new_module/Screens/main/main_screen.dart';
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:curved_tab/dashboard.dart';
import 'package:curved_tab/forms/cardRegistrationForm.dart';
import 'package:curved_tab/loginScreen.dart';
import 'package:curved_tab/pages/cardFloat.dart';
import 'package:curved_tab/pages/meter.dart';
import 'package:curved_tab/pages/registerCard.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// import 'package:flutter_new_module/constants.dart';
// import 'package:flutter_new_module/controllers/MenuController.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class MyNewApp extends StatefulWidget {
  const MyNewApp({Key? key, required String lastName}) : super(key: key);

  @override
  _MyNewAppState createState() => _MyNewAppState();
}

class _MyNewAppState extends State<MyNewApp> {
  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.gas_meter_outlined,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
    Icon(
      Icons.card_membership_outlined,
      size: 30,
    )
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SonaTap'),
          centerTitle: true,
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                  textTheme: TextTheme()
                      .apply(bodyColor: Color.fromARGB(255, 255, 255, 255)),
                  dividerColor: Colors.white,
                  iconTheme:
                      IconThemeData(color: Color.fromARGB(255, 5, 5, 5))),
              child: PopupMenuButton<int>(
                color: Color.fromARGB(255, 245, 239, 239),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                      value: 0,
                      child: Text(
                        "Pakia Mauzo Mtandaoni",
                        style: TextStyle(color: Colors.black),
                      )),
                  PopupMenuItem<int>(
                      value: 1,
                      child: Text("Badili Neno Siri",
                          style: TextStyle(color: Colors.black))),
                  PopupMenuItem<int>(
                      value: 2,
                      child: Text("Nunua Tokeni",
                          style: TextStyle(color: Colors.black))),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                      value: 3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Color.fromARGB(255, 138, 126, 126),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text("Logout", style: TextStyle(color: Colors.black))
                        ],
                      )),
                ],
                onSelected: (item) => SelectedItem(context, item),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          backgroundColor: Colors.transparent,
          // Colors.white.withOpacity(0.1),
          elevation: 0,
        ),
        backgroundColor: Color.fromARGB(255, 82, 135, 160),
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          animationCurve: Curves.easeOutCubic,
          buttonBackgroundColor: Colors.transparent,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          height: 70,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          // animationCurve: ,
        ),
        body: Stack(children: [
          Image.asset(
            'images/bgImg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
              // color: Colors.blue,
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: getSelectedWidget(index: index)),
        ]));
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Dashboard();
        break;
      case 1:
        widget = const Meter();
        break;
      case 2:
        widget = const MultiSectionForm();
        break;
      case 3:
        widget = const CardFloat();
        break;
      default:
        widget = const CardFloat();
        break;
    }
    return widget;
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Dashboard()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Meter()));

        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CardFloat()));

        break;
      case 3:
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => Home_Page(
                      title: '',
                    )),
            (route) => false);
        break;
    }
  }
}
