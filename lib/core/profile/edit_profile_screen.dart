import 'package:firstdemo/utils/top_header.dart';
import 'package:firstdemo/widgets/custom_buttons.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<EditProfileScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
                centertext: "Edit Profile",
                cart: true,
                icon: const Icon(Icons.arrow_back_ios),
                icon2: const Icon(Icons.more_vert),
                onMenuPressed: () {
                  Get.back();
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.snackbar("Alert", "Feature coming soon");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const CircleAvatar(radius: 50),
                        Positioned(
                          bottom: 0,
                          right: 4,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: const Icon(
                              Icons.edit,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),

            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Name",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextfields(controller: namecontroller, text: "Name"),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextfields(controller: namecontroller, text: "Email"),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextfields(
                    controller: namecontroller,
                    text: "Password",
                  ),
                  SizedBox(height: 40),
                  CustomButtons(
                    text: "Update",
                    func: () {
                      Get.snackbar("Alert", "Feature coming soon");
                    },
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
