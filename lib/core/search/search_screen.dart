import 'package:firstdemo/utils/app_routes.dart';
import 'package:firstdemo/utils/top_header.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class SearchScreen extends StatelessWidget {
  final List<String> keywords = [
    "Burger",
    "Sandwich",
    "Pizza",
    "Fries",
    "Biryani",
  ];

  final List<Map<String, String>> restaurants = [
    {
      "name": "Tulip",
      "image": "assets/images/r.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Xyner",
      "image": "assets/images/r1.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Village",
      "image": "assets/images/r5.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Dsom",
      "image": "assets/images/r4.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Tulip",
      "image": "assets/images/r.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Xyner",
      "image": "assets/images/r1.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Village",
      "image": "assets/images/r5.jpeg",
      "facilities": "Chicken, Pizza",
    },
    {
      "name": "Dsom",
      "image": "assets/images/r4.jpeg",
      "facilities": "Chicken, Pizza",
    },
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  TopHeader(
                    centertext: "Search",
                    icon: Icon(Icons.arrow_back_ios),
                    onMenuPressed: () {
                      Get.back();
                    },
                    onCartPressed: () {
                      Get.toNamed(AppRoutes.orderscreen);
                    },
                  ),
                  const SizedBox(height: 25),

                  CustomTextfields(
                    controller: controller,
                    text: "Search dishes, restaurants",
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recent Keywords",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: keywords.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.text = keywords[index];
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.grey.shade500),
                            ),
                            child: Center(
                              child: Text(
                                keywords[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Suggested Restaurants",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  final rest = restaurants[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 55,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(rest["image"]!),
                                ),
                              ),
                            ),

                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rest["name"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  rest["facilities"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
