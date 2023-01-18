// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, non_constant_identifier_names, avoid_print, prefer_const_literals_to_create_immutables
import 'package:curved_tab/bluetooth/MainPage.dart';
import 'package:flutter/material.dart';

class Meter extends StatelessWidget {
  const Meter({
    super.key,
  });

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
          'Meter Page',
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
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(left: 3, right: 3),
              backgroundColor: Color.fromARGB(255, 133, 98, 109),
            ),
            child: const Text('Unganisha na Meter'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MainPage(),
              ));
            },
          ),
          // color: Colors.blue,
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage(
          //             'images/bluetoothBlack.png',
          //           ),
          //           fit: BoxFit.contain)),
        ),
        SizedBox(height: 200),

        // FloatingActionButton.extended(
        //   onPressed: () {
        //     Navigator.pop(context);
        //     Navigator.of(context).push(MaterialPageRoute(
        //       builder: (context) => BluetoothPage(),
        //     ));
        //   },
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

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.transparent,
  //       elevation: 0,
  //       centerTitle: false,
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //               bottomLeft: Radius.circular(15),
  //               bottomRight: Radius.circular(15))),
  //       title: const Text(
  //         'Meter Page',
  //         style: TextStyle(
  //           color: Colors.black,
  //         ),
  //       ),
  //     ),

  //     // floatingActionButton: Padding(
  //     //   padding: const EdgeInsets.all(80.0),
  //     //   child: FloatingActionButton.extended(
  //     //     onPressed: () async {
  //     //       Navigator.pop(context);
  //     //       Navigator.of(context).push(MaterialPageRoute(
  //     //         builder: (context) => DiscoveryPage(),
  //     //       ));
  //     //       // login('', '');
  //     //     },
  //     //     label: const Text('Unganisha'),
  //     //     icon: const Icon(Icons.handshake),
  //     //     backgroundColor: Color.fromARGB(255, 192, 156, 168),
  //     //   ),
  //     // ),

  //     floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
  //     floatingActionButton: FloatingActionButton.extended(
  //       onPressed: () async {
  //         Navigator.pop(context);
  //         Navigator.of(context).push(MaterialPageRoute(
  //           builder: (context) => BluetoothPage(),
  //         ));
  //       },
  //       label: const Text('Unganisha'),
  //       icon: const Icon(Icons.handshake),
  //       backgroundColor: Color.fromARGB(255, 133, 98, 109),
  //     ),
  //     body: Container(
  //       decoration: const BoxDecoration(
  //           image: DecorationImage(
  //               image: AssetImage(
  //                 'images/bluetooth.png',
  //               ),
  //               fit: BoxFit.fitWidth)),
  //     ),
  //   );
  // }
}
