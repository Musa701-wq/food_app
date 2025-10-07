import 'package:firstdemo/utils/top_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cart/add_to_cart_controller.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> orders = [
    {
      "name": "Tulip",
      "image": "assets/images/r.jpeg",
      "facilities": "Chicken, Pizza",
      "time": "10min",
      "price": "Rs 2000",
      "items": "449",
      "des":
          "Tulip is a cozy family restaurant known for its warm ambiance and freshly prepared meals. Famous for its signature Chicken Pizza and Grilled Burgers.",
    },
    {
      "name": "Tulip",
      "image": "assets/images/r.jpeg",
      "facilities": "Chicken, Pizza",
      "time": "10min",
      "price": "Rs 2000",
      "items": "449",
      "des":
          "Tulip is a cozy family restaurant known for its warm ambiance and freshly prepared meals. Famous for its signature Chicken Pizza and Grilled Burgers.",
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AddToCartController controller = Get.find<AddToCartController>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          children: [
            TopHeader(
              centertext: "Order",
              icon: const Icon(Icons.arrow_back_ios),
              icon2: const Icon(Icons.shopping_cart),
              onMenuPressed: () {
                Get.back();
              },
            ),
            const SizedBox(height: 20),

            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Theme.of(context).primaryColor,
              tabs: const [
                Tab(text: "Order"),
                Tab(text: "History"),
              ],
            ),
            const SizedBox(height: 10),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      final order = controller.data[index];
                      return Card(
                        color: Colors.white,
                        elevation: 3,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage(order["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          order["name"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),

                                        const SizedBox(height: 14),
                                        Text("${order["price"]} | ${15} min"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 45,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Track Order",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 45,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Theme.of(
                                              context,
                                            ).primaryColor,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(
                                            color: Theme.of(
                                              context,
                                            ).primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  // Tab 2: History
                  const Center(child: Text("Content for Tab 2")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
