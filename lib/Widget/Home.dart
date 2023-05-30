import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeWidget extends StatefulWidget {
  //late List<SalesData> _chartData;
  @override
  // void initState() {
  //   _chartData = getChartData();
  //   super.initState();
  // }

  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  //const HomeWidget({super.key});
  // List<SalesData> chartData = [
  //   SalesData("jan", 5 as String),
  //   SalesData("jan", 35 as String),
  //   SalesData("jan", 35 as String),
  //   SalesData("jan", 35 as String),
  //   SalesData("jan", 35 as String),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "View details",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1684183201449-1033b47827c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        //margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(19),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Pec Dec",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "06",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            "WorkOuts",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            "Completed",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.red.withOpacity(0.6),
                        width: 50,
                        thickness: 2,
                      ),
                      Column(
                        children: const [
                          Text(
                            "42min",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            "Spen!on",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            "WorkOuts",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.red.withOpacity(0.6),
                        width: 50,
                        thickness: 2,
                      ),
                      Column(
                        children: const [
                          Text(
                            "01",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            "Challenges",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            "WorkOuts",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(15),
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade200,
                    ),
                    child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Basic  Planks",
                          style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.all(40),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  // llllllllllllllllllllllllllllllllllllllllllllllll
                ]),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              child: Center(
                                child: Text(
                                  "Equipment exercise",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              child: Column(
                                children: const [
                                  Center(
                                      child: Text(
                                    "Floors exercise",
                                    style: TextStyle(color: Colors.black),
                                  )),
                                ],
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              child: Column(
                                children: const [
                                  Center(
                                      child: Text(
                                    "Floors exercise",
                                    style: TextStyle(color: Colors.black),
                                  )),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 170,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1684183201449-1033b47827c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                "Barbell",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 170,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1684183201449-1033b47827c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                "Assault Bike",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 170,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1684183201449-1033b47827c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                "Assault Bike",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 170,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1684183201449-1033b47827c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                "Tread mill",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(12),
                //   child: Row(
                //     children: [
                //       Text(
                //         "Today's Workout",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 20),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(top: 0, left: 25),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Text(
                //             "27min",
                //             style: TextStyle(color: Colors.grey),
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Text(
                //             "342 Kcal",
                //             style: TextStyle(color: Colors.grey),
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Text(
                //             "3set",
                //             style: TextStyle(color: Colors.grey),
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      Text(
                        "Today's suggested meal",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        //margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(19),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Burrito Bowl",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      Text(
                        "Podcast",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        //margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(19),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "How to better work at home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData("jan", 5 as String),
      SalesData("jan", 35 as String),
      SalesData("jan", 35 as String),
      SalesData("jan", 35 as String),
      SalesData("jan", 35 as String),
    ];
    return chartData;
  }
}

class SalesData {
  final String month;
  final String sales;
  SalesData(this.month, this.sales);
}
