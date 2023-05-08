import 'package:flutter/material.dart';
import 'package:gym_app/Widgets/Profiel.dart';
import 'package:gym_app/Widgets/Sign%20in.dart';
//import 'package:gym_app/Widgets/Sign%20in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: ProfileScreen());
  }
}
