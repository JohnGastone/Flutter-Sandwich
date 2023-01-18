// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class CardFloat extends StatelessWidget {
  const CardFloat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          title: const Text(
            'Card Float Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/water.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(30),
                  backgroundColor: Color.fromARGB(255, 133, 98, 109),
                ),
                child: const Text('Ongeza Salio Kwenye Kadi'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Funga'),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Ongeza'),
                                  )
                                ],
                              ),
                            ],
                            title: const Text(''),
                            contentPadding: const EdgeInsets.all(20.0),
                            content: const Text(
                                'Tafadhali Sogeza Kadi Yako Karibu.'),
                          ));
                },
              ),
            ),
          ],
        ));
  }
}
