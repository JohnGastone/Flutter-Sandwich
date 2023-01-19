// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:curved_tab/Widgets/alertDialog.dart';
import 'package:curved_tab/dashboard.dart';
import 'package:flutter/material.dart';

import '../forms/cardRegistrationForm.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({Key? key}) : super(key: key);

  // Card for
  Widget buildColorCard(context) => Card(
        color: Colors.white38,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Color.fromARGB(221, 139, 124, 124),
        elevation: 15,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: const [
              Color.fromARGB(255, 238, 227, 237),
              Color.fromARGB(255, 173, 118, 114)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Ripoti ya siku',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Sajili Kadi.',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
            ),
            Ink.image(
              image: AssetImage('./images/waterdrop.png'),
              height: 1,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Dashboard()));
                },
              ),
            ),
          ]),
        ),
      );

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
          'Card Registration Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(children: [
        buildColorCard(context),
        Image.asset(
          'images/water.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SizedBox(
          height: 60,
        ),

        // Center(
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       padding: const EdgeInsets.all(30),
        //       backgroundColor: Color.fromARGB(255, 133, 98, 109),
        //     ),
        //     child: const Text('Sajili Kadi'),
        //     onPressed: () {
        //       showDialog(
        //           context: context,
        //           builder: (context) => AlertDialog(
        //                 actions: [
        //                   Row(
        //                     children: [
        //                       TextButton(
        //                         onPressed: () {
        //                           Navigator.of(context).pop();
        //                         },
        //                         child: const Text('Funga'),
        //                       ),
        //                       TextButton(
        //                         onPressed: () async {
        //                           Navigator.pop(context);
        //                           Navigator.of(context).push(MaterialPageRoute(
        //                             builder: (context) => MultiSectionForm(),
        //                           ));
        //                         },
        //                         child: const Text('Sajili'),
        //                       )
        //                     ],
        //                   ),
        //                 ],
        //                 title: const Text(''),
        //                 contentPadding: const EdgeInsets.all(20.0),
        //                 content:
        //                     const Text('Tafadhali Sogeza Kadi Yako Karibu.'),
        //               ));
        //     },
        //   ),
        // ),
      ]),
    );
  }
}
