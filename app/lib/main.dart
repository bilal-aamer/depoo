import 'package:Depoo/welcome_screen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Depoo',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
