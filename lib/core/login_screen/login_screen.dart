import 'package:firstdemo/widgets/custom_buttons.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passcontroller = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool remindMe = false;

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
                      Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        "Please sign in to your existing account",
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
                            Text(
                              "Email",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 5),
                            CustomTextfields(
                              controller: emailcontroller,
                              text: "Email",
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Password",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 5),
                            CustomTextfields(
                              controller: passcontroller,
                              text: "Password",
                            ),
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      visualDensity: VisualDensity.compact,
                                      value: remindMe,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "Remind Me",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            // ignore: deprecated_member_use
                                            color: Colors.black.withOpacity(
                                              0.3,
                                            ),
                                          ),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.forget);
                                  },
                                  child: Text(
                                    "Forget Password?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: CustomButtons(
                                text: "Login",
                                func: () {
                                  Get.offNamed(AppRoutes.home);
                                  if (formKey.currentState!.validate()) {
                                    Get.snackbar(
                                      "Success",
                                      "Login Successful!",
                                      snackPosition: SnackPosition.BOTTOM,
                                    );
                                  }
                                },
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have any account? ",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(
                                        // ignore: deprecated_member_use
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.signup);
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Center(child: Text("or")),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/googleicon.png",
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/facebook.png",
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                              ],
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
