import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // const ProfileScreen({super.key});
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
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Food "),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_gymnastics_rounded), label: "fitness"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person")
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                  radius: 50,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("John Deo",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900)),
                      Text(
                        "johndeo@gamil.com",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.person,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Icon(Icons.notifications),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Notifications", style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Icon(Icons.security),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Security", style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Icon(Icons.help),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Help", style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Icon(Icons.remove_red_eye),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Dark Theme", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Icon(Icons.logout),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Logout", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
