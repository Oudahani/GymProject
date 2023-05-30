import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SportWidget extends StatefulWidget {
  const SportWidget({super.key});

  @override
  State<SportWidget> createState() => _SportWidgetState();
}

class _SportWidgetState extends State<SportWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1684364971476-490f5b033aed?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
            ),
            const SizedBox(
              height: 15,
            ),
            // Positioned.fill(
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Floor Workout",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 30,
            //       ),
            //       maxLines: 1,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Positioned.fill(
            //   child: Align(
            //     alignment: Alignment.bottomLeft,
            //     child: Row(
            //       children: [
            //         Text(
            //           "586 Kcal",
            //           style: TextStyle(color: Colors.grey, fontSize: 20),
            //         ),
            //         SizedBox(
            //           width: 5,
            //         ),
            //         Text(
            //           "35 min",
            //           style: TextStyle(color: Colors.grey, fontSize: 20),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red),
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: const [
                    Tab(
                      child: Text(
                        "Beginner",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Intermediate",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Advance",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 700,
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1684364971476-490f5b033aed?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"),
                                      fit: BoxFit.cover)),
                            ),
                            Expanded(
                              child: Container(
                                height: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Backward Lunges",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.abc,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Text("76 Kcal",
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.abc,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Text(" 6min",
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.red,
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "Start",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
