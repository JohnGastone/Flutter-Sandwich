// ignore_for_file: prefer_const_constructors, avoid_print, unused_label, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Container(
          // ignore: non_constant_identifier_names
          child: Scaffold(
        backgroundColor: Color.fromARGB(255, 125, 156, 154),
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 300),
          color: Color.fromARGB(255, 211, 204, 204),

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const Icon(
              Icons.home,
              color: Colors.blueGrey,
            ),
            Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 167, 129, 15),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/Hand_creating_a_lightbulb_with_green_tree_inside.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ));
}
