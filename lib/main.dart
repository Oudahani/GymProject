import 'package:flutter/material.dart';
import 'package:gym_app/Screen/mainScreen.dart';
import 'package:gym_app/SpHelper.dart';
import 'package:gym_app/controllers/controll.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //كل ما main تبعتي اتكون async لازم اكتب هادا السطر
  await SpHelper.spHelper.initSp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<dbcontrool>(
      create: (context) =>
          dbcontrool(), //انشاءت اوبجيكت وحطيته في ChangeNotifierProvider
      child: const MaterialApp(
          // navigatorKey: AppRouter.navkey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: MainScreen()),
    );
  }
}
