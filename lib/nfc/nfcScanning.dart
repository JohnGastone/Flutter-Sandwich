// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _nfcData = 'No NFC tag detected.';

  @override
  void initState() {
    super.initState();
    FlutterNfcReader.onTagDiscovered().listen((onData) {
      setState(() {
        _nfcData = onData;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NFC Reader Example'),
        ),
        body: Center(
          child: Text(_nfcData),
        ),
      ),
    );
  }
}
