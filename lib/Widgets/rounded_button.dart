// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:curved_tab/dashboard.dart';
import 'package:curved_tab/main.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_new_module/display_data.dart';
// import 'package:flutter_new_module/open_dashboard.dart';
import '../homepage.dart';
import '../palatte.dart';
// import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
    required this.controller,
    required this.pwdController,
  }) : super(key: key);

  final String buttonText;
  final TextEditingController controller;
  final TextEditingController pwdController;

  // static String aMSales = "Loading...";
  // static int aMPercent = 0;
  // static String aMPerformance = "Loading...";
  //
  // insertData(String sales, int percentage, String performance) {
  //   aMSales = sales;
  //   aMPercent = percentage;
  //   aMPerformance = performance;
  // }

  static const platform = MethodChannel('com.flutter.sonatap/login');

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      // ignore: deprecated_member_use
      child: TextButton(
        onPressed: () {
          // content: Text(controller.text);
          check_login_credentials(
              userId: Text(widget.controller.text),
              passwd: Text(widget.pwdController.text));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            widget.buttonText,
            style: kBodyText,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> check_login_credentials(
      {required Text userId, required Text passwd}) async {
    // // const platform = MethodChannel("com.flutter.sonatap/request");

    // try {
    //   final arguments = {
    //     'userId': userId.data,
    //     'password': passwd.data,
    //   };

    //   final String newData = await RoundedButton.platform
    //       .invokeMethod('check_login_credentials', arguments);

    //   List<dynamic> loginResponse = jsonDecode(newData);
    //   if (loginResponse[0] == "0") {
    //     Fluttertoast.showToast(
    //         msg: loginResponse[1],
    //         toastLength: Toast.LENGTH_LONG,
    //         fontSize: 20,
    //         backgroundColor: Colors.blue);

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MyNewApp(
                  lastName: '',
                )));
    //   } else {
    //     Fluttertoast.showToast(
    //         msg: loginResponse[1],
    //         toastLength: Toast.LENGTH_LONG,
    //         fontSize: 20,
    //         backgroundColor: Colors.red);
    //   }
    //   List<String> strData = newData.split(", ");

    //   if (strData[0] == "Welcome") {
    //     Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => const MyNewApp(lastName: "Kapinga")));
    //   }

    //   Fluttertoast.showToast(
    //       msg: newData,
    //       toastLength: Toast.LENGTH_LONG,
    //       fontSize: 20,
    //       backgroundColor: Colors.green);
    // } catch (e) {
    //   Fluttertoast.showToast(
    //       msg: e.toString(),
    //       toastLength: Toast.LENGTH_LONG,
    //       fontSize: 20,
    //       backgroundColor: Colors.red);
    // }
  }

  // ignore: non_constant_identifier_names
  Future<void> save_data_on_shared_preference(
      String firstName,
      String lastName,
      String agentMonthlySales,
      int agentMonthlyPercentage,
      String agentMonthlyPerformance,
      String agentMonthlyCardRegistered,
      int agentMonthlyCardRegisteredPercentage,
      String agentMonthlyCardRegisteredPerformance,
      String agentMonthlyCoinSales,
      int agentMonthlyCoinPercentage,
      String agentMonthlyCoinPerformance,
      String agentMonthlyCardSales,
      int agentMonthlyCardPercentage,
      String agentMonthlyCardPerformance) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('fName', firstName);
    // prefs.setString('lName', lastName);
    // prefs.setString('aMSales', agentMonthlySales);
    // prefs.setInt('aMPercent', agentMonthlyPercentage);
    // prefs.setString('aMPerformance', agentMonthlyPerformance);
    // widget.aMSales = agentMonthlySales;
    // widget.insertData(agentMonthlySales, agentMonthlyPercentage, agentMonthlyPerformance);
    // DisplayData.insertData(agentMonthlySales, agentMonthlyPercentage, agentMonthlyPerformance, agentMonthlyCardRegistered, agentMonthlyCardRegisteredPercentage, agentMonthlyCardRegisteredPerformance, agentMonthlyCoinSales, agentMonthlyCoinPercentage, agentMonthlyCoinPerformance, agentMonthlyCardSales, agentMonthlyCardPercentage, agentMonthlyCardPerformance);
  }
}
