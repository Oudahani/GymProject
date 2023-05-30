import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class foodWidget extends StatelessWidget {
  const foodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1611309454921-16cef3438ee0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2QlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("100g", style: TextStyle(color: Colors.grey)),
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
                    Text("76 Kcal", style: TextStyle(color: Colors.grey)),
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
                    Text(" 6min", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1(15-ounce) can black beans,drained",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("1 1/2 cups salsa"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("1/2 teaspon ground  cumin"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("1 3/4 cups cooked rice"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("1/2 teaspon ground  cumin"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Food is any substance consumed to provide nutritional support and energy to an organism. It can be raw, processed or formulated and is consumed orally by animals for growth, health or pleasure. Food is mainly composed of water, lipids, proteins and carbohydrates. Minerals (e.g. salts) and organic substances (e.g. vitamins) can also be found in food. Plants, algae and some microorganisms use photosynthesis to make their own food molecules.[5] Water is found in many foods and has been defined as a food by itself. Water and fiber have low energy densities, or calories, while fat is the most energy dense component. Some inorganic (non-food) elements are also essential for plant and animal functioning.s")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
