// ignore_for_file: prefer_const_constructors, unused_import
import 'package:curved_tab/homepage.dart';
import 'package:curved_tab/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'loginSCreen.dart';
import 'package:flutter/material.dart';

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
      home: LoginScreen(),
    );
  }
}
