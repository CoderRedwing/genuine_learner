import 'package:flutter/material.dart';
import 'package:genuine_learner/color.dart';
import 'package:genuine_learner/home_screen.dart';
import 'package:genuine_learner/login_page.dart';
import 'package:genuine_learner/signup_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),

      home: const SignUpPage(),
    );
  }
}

