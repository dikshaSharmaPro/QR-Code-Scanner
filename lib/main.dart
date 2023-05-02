import 'package:flutter/material.dart';
import 'package:qr_scanner/scanner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Scanner',
      theme: ThemeData(
       
        primarySwatch: Colors.blueGrey,
      ),
      home: ScannerScreen(),
    );
  }
}


