// ignore_for_file: prefer_const_constructors, unused_import, depend_on_referenced_packages
import 'package:curved_tab/dashboard.dart';
import 'package:curved_tab/loginScreen.dart';
import 'package:curved_tab/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MyApp(),
  );
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

        // Shortcuts for VS Code
// 1. Move Line or Selection {Alt + PgUp/PgDown}
// 2. Copy Line or Selection and duplicate it {Alt + Shift + PgUp/PgDown}
// 3. Change Tab (Go to the next/previous open tab) {Ctrl + PgUp/PgDown}
// 4. Move current tab one position forward or backward {Ctrl + Shift + PgUp/PgDown}
// 5. Find a file anywhere in your current editor session with fuzzy search {Ctrl + P}
// 6. Find a class, function, or property anywhere in your current editor session with fuzzy search {Ctrl + T}
// 7. Expand or Collapse a code block, such as a function or a class {Ctrl + K}
// 8. Collapse all code blocks at a certain indentation level corresponding to pressed number {Ctrl + 1/2/3...}
// 9. Expand all code blocks recursively {Ctrl + J}
// 10. Go to the next or previous terminal {Ctrl + PgUp/PgDown}
// 11. Go to the next or previous terminal in a split-pane configuration {Alt + right/left arrow}
// 12. Resize your terminal section to view more or less content {Ctrl + Shift +  right/left arrow}
