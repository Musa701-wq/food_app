import 'package:firstdemo/core/cart/add_to_cart_controller.dart';
import 'package:firstdemo/utils/app_routes.dart';
import 'package:firstdemo/utils/top_header.dart';
import 'package:firstdemo/widgets/custom_buttons.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AddToCartController controller = Get.find<AddToCartController>();

    TextEditingController locationcontroller = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(color: Color(0xFF121223)),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/images/Ellipse 1005.png",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/Vector 142.png",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => TopHeader(
                    centertext: "Cart",
                    icon: const Icon(Icons.arrow_back_ios),
                    icon1color: Colors.white,

                    // ignore: unrelated_type_equality_checks
                    textbutton: controller.isEdit == true
                        ? "DONE"
                        : "EDIT ITEMS",
                    textbuttonfunc: () {
                      controller.isEdit.value = !controller.isEdit.value;
                    },
                    onMenuPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                flex: 5,
                child: Obx(() {
                  if (controller.data.isEmpty) {
                    return const Center(child: Text("Your cart is empty"));
                  }
                  return ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      final item = controller.data[index];
                      return SizedBox(
                        height: 150,
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(item["image"]),

                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                item["name"],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(width: 35),
                                              Obx(
                                                () =>
                                                    controller.isEdit.value ==
                                                        true
                                                    ? IconButton(
                                                        icon: const Icon(
                                                          Icons.delete,
                                                          color: Colors.red,
                                                        ),
                                                        onPressed: () =>
                                                            controller
                                                                .removeItem(
                                                                  index,
                                                                ),
                                                      )
                                                    : const SizedBox.shrink(),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 6),
                                          Text(
                                            item["price"],
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "14",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 145),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor: Colors
                                                          .grey
                                                          // ignore: deprecated_member_use
                                                          .withOpacity(0.3),

                                                      radius: 12,
                                                      child: IconButton(
                                                        iconSize: 10,
                                                        icon: const Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                        onPressed: () =>
                                                            controller
                                                                .decreaseQuantity(
                                                                  index,
                                                                ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      item["quantity"]
                                                          .toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    CircleAvatar(
                                                      backgroundColor: Colors
                                                          .grey
                                                          // ignore: deprecated_member_use
                                                          .withOpacity(0.3),

                                                      radius: 12,
                                                      child: IconButton(
                                                        iconSize: 10,
                                                        icon: const Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                        onPressed: () =>
                                                            controller
                                                                .increaseQuantity(
                                                                  index,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),

              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Items",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    // ignore: deprecated_member_use
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "EDIT",
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        CustomTextfields(
                          controller: locationcontroller,
                          text: "Gulberg greens",
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Total :",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    // ignore: deprecated_member_use
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                            ),
                            SizedBox(width: 13),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text(
                                  "Rs49",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                SizedBox(width: 129),
                                Row(
                                  children: [
                                    Text(
                                      "breakdown ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            color: Theme.of(
                                              context,
                                            ).primaryColor,
                                          ),
                                    ),
                                    Icon(Icons.arrow_forward_ios, size: 15),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        CustomButtons(
                          text: "Place Order",
                          func: () {
                            Get.toNamed(AppRoutes.orderscreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
