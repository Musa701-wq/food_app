// ignore_for_file: deprecated_member_use

import 'package:firstdemo/utils/app_routes.dart';
import 'package:firstdemo/utils/top_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonaldetailScreen extends StatelessWidget {
  const PersonaldetailScreen({super.key});

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
                icon: const Icon(Icons.arrow_back_ios),
                cart: true,
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
                          title: Text("FULL NAME"),
                          subtitle: Text("Vishal Kadok"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.email,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text("EMAIL"),
                          subtitle: Text("Vish@vantagesoft.com"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              size: 18,
                              Icons.phone,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          title: Text("PHONE NUMBER"),
                          subtitle: Text("141267260100"),
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
