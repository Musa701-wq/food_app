import 'package:firstdemo/widgets/circle_button.dart';
import 'package:firstdemo/widgets/custom_buttons.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passcontroller = TextEditingController();
    final TextEditingController confirmpasscontroller = TextEditingController();
    final TextEditingController namecontroller = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: [
          Container(color: Theme.of(context).secondaryHeaderColor),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: CustomCircleButtons(
                            func: () {
                              Get.back();
                            },
                          ),
                        ),
                      ),
                      Text(
                        "Signup",
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Please sign up to get started",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
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
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name"),
                            const SizedBox(height: 5),
                            CustomTextfields(
                              controller: namecontroller,
                              text: "Name",
                            ),
                            const SizedBox(height: 20),
                            Text("Email"),
                            const SizedBox(height: 5),
                            CustomTextfields(
                              controller: emailcontroller,
                              text: "Email",
                            ),
                            const SizedBox(height: 20),
                            Text("Password"),
                            const SizedBox(height: 5),
                            CustomTextfields(
                              controller: passcontroller,
                              text: "Password",
                            ),
                            const SizedBox(height: 20),
                            Text("Confirm Password"),
                            const SizedBox(height: 5),
                            CustomTextfields(
                              controller: confirmpasscontroller,
                              text: "Confirm Password",
                            ),
                            const SizedBox(height: 30),
                            Center(
                              child: CustomButtons(
                                text: "Signup",
                                func: () {
                                  if (formKey.currentState!.validate()) {
                                    if (passcontroller.text !=
                                        confirmpasscontroller.text) {
                                      Get.snackbar(
                                        "Error",
                                        "Passwords do not match",
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    } else {
                                      Get.snackbar(
                                        "Success",
                                        "Signup Successful!",
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    }
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
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
