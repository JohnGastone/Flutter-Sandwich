// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 197, 194),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 500),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const Icon(
            Icons.home,
            color: Colors.lightBlue,
          ),
          Icon(
            Icons.favorite,
            color: Colors.amber,
          ),
          Icon(
            Icons.settings,
            color: Colors.blueGrey,
          ),
        ],
        onTap: (index) {
          print(index);
        },
      ),
      body: Container(color: Colors.teal),
    );
  }
}
