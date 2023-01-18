// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, unnecessary_import

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'palatte.dart';
import 'Widgets/widgets.dart';

void main() => runApp(
      const MaterialApp(
        title: "Transparent App",
        debugShowCheckedModeBanner: false,
        home: Home_Page(
          title: 'SonaTap',
        ),
      ),
    );

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // Initially password is obscure
  bool _obscureText = true;

  // String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final myController = TextEditingController();
  final myPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'SonaTap',
            style: TextStyle(color: Colors.black45),
          ),
          centerTitle: true,
          // leading: BackButton(),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {},
          //   )
          // ],
          // ignore: prefer_const_constructors
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          backgroundColor: Colors.transparent,
          // Colors.white.withOpacity(0.1),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/surface_falling.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 150,
                        child: Center(
                          child: Text('', style: kHeading),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextInput(
                                  icon: Icons.account_circle_outlined,
                                  hint: 'User-ID',
                                  inputType: TextInputType.number,
                                  inputAction: TextInputAction.next,
                                  controller: myController,
                                ),

                                PasswordInput(
                                  icon: Icons.lock,
                                  hint: 'Password',
                                  inputAction: TextInputAction.done,
                                  controller: myPwdController,
                                  obsText: _obscureText,
                                ),
                                // ignore: deprecated_member_use
                                TextButton(
                                    onPressed: _toggle,
                                    child: Icon(
                                      _obscureText
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Colors.black45,
                                      size: 38,
                                    )),
                                const Text(
                                  'Forgot Password?',
                                  style: kBodyText,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 100,
                                ),
                                RoundedButton(
                                  buttonText: 'LOGIN',
                                  controller: myController,
                                  pwdController: myPwdController,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
