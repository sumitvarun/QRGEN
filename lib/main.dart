import 'package:flutter/material.dart';
import 'package:qr_code_generator_sumitvarun/screens/welcome_screen.dart';

import 'screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: welcomeScreen(),
    );
  }
}
