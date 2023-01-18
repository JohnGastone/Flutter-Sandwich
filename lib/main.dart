// ignore_for_file: prefer_const_constructors, unused_import, depend_on_referenced_packages
import 'package:curved_tab/dashboard.dart';
import 'package:curved_tab/loginScreen.dart';
import 'package:curved_tab/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login UI',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 2000,
            splashIconSize: 1000,
            splash: Image.asset('images/sonak_logo.jpeg'),
            splashTransition: SplashTransition.scaleTransition,
            // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Color.fromARGB(255, 254, 254, 255),
            nextScreen: Home_Page(
              title: '',
            )));
  }
}
