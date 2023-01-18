// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, unused_label, dead_code

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(children: [
        Image.asset(
          'images/water.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          // color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage(
          //           '',
          //         ),
          //         fit: BoxFit.fitWidth)),
        ),

        // SizedBox(height: 70),
        // FloatingActionButton.extended(
        //   onPressed: () {},
        //   label: const Text('Unganisha'),
        //   icon: const Icon(Icons.handshake),
        //   backgroundColor: Colors.grey,
        // )
      ]),
    );
    //floatingActionButton:
    // FloatingActionButton.extended(
    //   onPressed: () {
    //     // Add your onPressed code here!
    //   },
    //   label: const Text('Approve'),
    //   icon: const Icon(Icons.thumb_up),
    //   backgroundColor: Color.fromARGB(255, 192, 156, 168),
    // );
  }
}
