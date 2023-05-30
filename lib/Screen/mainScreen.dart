
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gym_app/Widget/Sport.dart';
import 'package:gym_app/Widget/Home.dart';
import 'package:gym_app/Widget/Profiel.dart';
import 'package:gym_app/Widget/food.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexpage,
          onTap: (v) {
            indexpage = v;
            pageController.jumpToPage(v);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: "Food",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Spqort"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: PageView(
          controller: pageController,
          children: [
            HomeWidget(),
            foodWidget(),
            SportWidget(),
            ProfileWidget(),
          ],
        ));
  }
}
