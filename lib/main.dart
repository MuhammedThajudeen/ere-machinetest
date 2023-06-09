import 'package:ere_machinetest/screens/home.dart';
import 'package:ere_machinetest/screens/signin_screen.dart';
import 'package:ere_machinetest/screens/signup_screen.dart';
import 'package:ere_machinetest/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: welcomescreen(),
    );
  }
}
