import 'package:firstdemo/utils/app_routes.dart';
import 'package:firstdemo/utils/top_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TopHeader(
                centertext: "Profile",
                cart: true,
                icon: const Icon(Icons.arrow_back_ios),

                onMenuPressed: () {
                  Get.back();
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.editprofilescreen);
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Theme.of(
                        context,
                        // ignore: deprecated_member_use
                      ).primaryColor.withOpacity(0.5),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          "Vishal Kadok",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          "I love fast food",
                          style: Theme.of(context).textTheme.bodyMedium!
                              // ignore: deprecated_member_use
                              .copyWith(color: Colors.black.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.person,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Personal Info",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.personaldetailscreen);
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.home,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Home",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.home);
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.shopping_cart,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "cart",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.addtocart);
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.restaurant,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Restaurant",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.addtocart);
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.search,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Search",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.search);
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.shopping_bag,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Order",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.orderscreen);
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.settings,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Setting",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.showSnackbar(
                              GetSnackBar(
                                title: "Alert",
                                message: "Feature coming soon",
                                backgroundColor: Theme.of(context).primaryColor,
                                snackPosition: SnackPosition.BOTTOM,
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.logout,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text(
                            "Logout",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Get.showSnackbar(
                              GetSnackBar(
                                title: "Alert",
                                message: "Feature coming soon",
                                backgroundColor: Theme.of(context).primaryColor,
                                snackPosition: SnackPosition.BOTTOM,
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
