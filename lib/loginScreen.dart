// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/Hand_creating_a_lightbulb_with_green_tree_inside.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 20,
            ),
            // Hello fella
            Text(
              'SONAK Ltd',
              style: GoogleFonts.bebasNeue(
                  fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome back, it\'s time to get the work done',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 28,
            ),
            // Email Textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Machine ID',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            // Password TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 18,
            ),
            // Signin Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110.5),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 173, 147),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
              ),
            ),

            SizedBox(
              height: 60,
            )
          ]),
        ),
      ),
    );
  }
}
