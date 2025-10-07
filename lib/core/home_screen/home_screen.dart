import 'package:firstdemo/core/restaurant/restaurant_screen.dart';
import 'package:firstdemo/utils/top_header.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_routes.dart';
import 'home_controller.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  final HomeController homecontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final List<Map<String, String>> categories = [
      {"name": "Hot Dog", "image": "assets/images/hd.jpg"},
      {"name": "Burger", "image": "assets/images/burger.jpg"},
      {"name": "Pizza", "image": "assets/images/pizza.jpg"},
      {"name": "Drinks", "image": "assets/images/drink.jpg"},
      {"name": "Ice Cream", "image": "assets/images/ice.jpeg"},
    ];

    final List<Map<String, dynamic>> restaurants = [
      {
        "name": "Tulip",
        "image": "assets/images/r.jpeg",
        "facilities": "Chicken, Pizza",
        "time": "10min",
        "des":
            "Tulip is a cozy family restaurant known for its warm ambiance and freshly prepared meals. Famous for its signature Chicken Pizza and Grilled Burgers, Tulip combines authentic flavors with a modern dining experience. Whether it’s lunch with friends or a late-night bite, Tulip promises quality taste in every bite.",

        "pizza": [
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "sandwich": [
          {
            "name": "Chicken",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "fries": [
          {
            "name": "Loaded",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "drink": [
          {
            "name": "coke",
            "image": "assets/images/pizza.jpg",
            "size": "half litter",
            "price": "Rs 150",
          },
        ],
      },
      {
        "name": "Xyner",
        "image": "assets/images/r1.jpeg",
        "facilities": "Chicken, Pizza",
        "time": "12min",
        "des":
            "Tulip is a cozy family restaurant known for its warm ambiance and freshly prepared meals. Famous for its signature Chicken Pizza and Grilled Burgers, Tulip combines authentic flavors with a modern dining experience. Whether it’s lunch with friends or a late-night bite, Tulip promises quality taste in every bite.",

        "pizza": [
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "sandwich": [
          {
            "name": "Chicken",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "fries": [
          {
            "name": "Loaded",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "drink": [
          {
            "name": "7 UP",
            "image": "assets/images/pizza.jpg",
            "size": "half litter",
            "price": "Rs 150",
          },
        ],
      },
      {
        "name": "Village",
        "image": "assets/images/r5.jpeg",
        "facilities": "Chicken, Pizza",
        "des":
            "Tulip is a cozy family restaurant known for its warm ambiance and freshly prepared meals. Famous for its signature Chicken Pizza and Grilled Burgers, Tulip combines authentic flavors with a modern dining experience. Whether it’s lunch with friends or a late-night bite, Tulip promises quality taste in every bite.",
        "time": "15min",
        "pizza": [
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "sandwich": [
          {
            "name": "Chicken",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "fries": [
          {
            "name": "Loaded",

            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "drink": [
          {
            "name": "Sprite",
            "image": "assets/images/pizza.jpg",
            "size": "half litter",
            "price": "Rs 150",
          },
        ],
      },
      {
        "name": "Dsom",
        "image": "assets/images/r4.jpeg",
        "facilities": "Chicken, Pizza",
        "des":
            "Tulip is a cozy family restaurant known for its warm ambiance and freshly prepared meals. Famous for its signature Chicken Pizza and Grilled Burgers, Tulip combines authentic flavors with a modern dining experience. Whether it’s lunch with friends or a late-night bite, Tulip promises quality taste in every bite.",

        "time": "8min",
        "pizza": [
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
          {
            "name": "Tandoori Pizza",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "sandwich": [
          {
            "name": "Chicken",
            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "fries": [
          {
            "name": "Loaded",

            "image": "assets/images/pizza.jpg",
            "size": "Large",
            "price": "Rs 2000",
          },
        ],
        "drink": [
          {
            "name": "Dew",
            "image": "assets/images/pizza.jpg",
            "size": "half litter",
            "price": "Rs 150",
          },
        ],
      },
    ];

    return Scaffold(
      key: scaffoldKey,

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              // ignore: deprecated_member_use
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Logo.png"),
                    ),
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              onTap: () {
                Get.toNamed(AppRoutes.search);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Get.toNamed(AppRoutes.profilescreen);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
              onTap: () {
                Get.toNamed(AppRoutes.addtocart);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Order"),
              onTap: () {
                Get.toNamed(AppRoutes.orderscreen);
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopHeader(
                uptext: "Deliver To",
                lowtext: "Halal Lab Office",

                onMenuPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                onCartPressed: () {
                  Get.toNamed(AppRoutes.orderscreen);
                },
              ),

              const SizedBox(height: 25),

              RichText(
                text: TextSpan(
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Colors.black),
                  children: const [
                    TextSpan(text: "Hey Halal, "),
                    TextSpan(
                      text: "Good Afternoon!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              CustomTextfields(
                controller: controller,
                text: "Search dishes, restaurants",
                onTap: () {
                  Get.toNamed(AppRoutes.search);
                },
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Categories",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  /* TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All >",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),*/
                ],
              ),

              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    return Obx(() {
                      bool isSelected =
                          homecontroller.selectedCategoryIndex.value == index;

                      return GestureDetector(
                        onTap: () {
                          homecontroller.selectCategory(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Card(
                            color: isSelected
                                ? Theme.of(context).primaryColor
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      category["image"]!,
                                    ),
                                    backgroundColor: Colors.grey.shade200,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(category["name"]!),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
                  },
                ),
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open Restaurants",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  /* TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All >",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),*/
                ],
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: restaurants.length,
                  itemBuilder: (context, index) {
                    final rest = restaurants[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            () => RestaurantDetailScreen(),
                            arguments: restaurants[index],
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  rest["image"]!,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      rest["name"]!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      rest["facilities"]!,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
