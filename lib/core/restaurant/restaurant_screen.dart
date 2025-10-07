import 'package:firstdemo/core/cart/add_to_cart_controller.dart';

import 'package:firstdemo/utils/top_header.dart';
import 'package:firstdemo/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_routes.dart';
import 'restaurant_controller.dart';

class RestaurantDetailScreen extends StatelessWidget {
  RestaurantDetailScreen({super.key});

  final restaurant = Get.arguments;
  final RestaurantController controller = Get.put(RestaurantController());
  final AddToCartController addcontroller = Get.put(AddToCartController());
  @override
  Widget build(BuildContext context) {
    final List<String> keywords = [
      "sandwich",
      "drink",
      "pizza",
      "fries",
      "biryani",
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopHeader(
                    centertext: restaurant["name"],
                    icon: const Icon(Icons.arrow_back_ios),
                    icon2: const Icon(Icons.shopping_cart),
                    onMenuPressed: () => Get.back(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage(restaurant["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    restaurant["name"],
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    maxLines: 3,
                    restaurant["des"],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/Star 1.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text("4.5"),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      SizedBox(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/Delivery.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text("Free"),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      SizedBox(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/Clock.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text("20 min"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: keywords.length,
                      itemBuilder: (context, index) {
                        return Obx(() {
                          bool isSelected =
                              controller.selectedCategoryIndex.value == index;
                          return GestureDetector(
                            onTap: () => controller.selectCategory(
                              index,
                              keywords[index],
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: isSelected
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey.shade400,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  keywords[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.grey.shade800,
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => Text(
                      controller.selectedvalue.value.toString(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 2,
              child: Obx(() {
                final categoriesList =
                    restaurant[controller.selectedvalue.value] ?? [];
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    final item = categoriesList[index];
                    return SizedBox(
                      height: 180,
                      width: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 1.5,

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(item["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),

                                Text(
                                  item["name"],
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),

                                Text(
                                  item["size"] ?? "",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item["price"],
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
                                    ),
                                    CustomCircleButtons(
                                      func: () async {
                                        addcontroller.addItem(item);
                                        Get.snackbar(
                                          "Added to Cart",
                                          "${item["name"]} has been added",
                                          snackPosition: SnackPosition.BOTTOM,
                                        );
                                        Get.toNamed(AppRoutes.addtocart);
                                      },
                                      icon: const Icon(Icons.add),
                                      color: Theme.of(context).primaryColor,
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
