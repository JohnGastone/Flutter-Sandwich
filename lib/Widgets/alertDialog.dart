// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../forms/cardRegistrationForm.dart';

class alertDialog extends StatelessWidget {
  const alertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(30),
          backgroundColor: const Color.fromARGB(255, 133, 98, 109),
        ),
        child: const Text('Sajili Kadi'),
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
                              Navigator.pop(context);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MultiSectionForm(),
                              ));
                            },
                            child: const Text('Sajili'),
                          )
                        ],
                      ),
                    ],
                    title: const Text(''),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('Tafadhali Sogeza Kadi Yako Karibu.'),
                  ));
        },
      ),
    );
  }
}


// AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

// // set title
// alertDialogBuilder.setTitle("Your Title");

// // set dialog message
// alertDialogBuilder.setMessage("Message here!").setCancelable(false);

// // create alert dialog
// AlertDialog alertDialog = alertDialogBuilder.create();

// // show it
// alertDialog.show();

// // After some action
// alertDialog.dismiss();