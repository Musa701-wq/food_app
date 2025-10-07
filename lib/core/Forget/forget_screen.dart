import 'package:firstdemo/utils/app_routes.dart';
import 'package:firstdemo/widgets/circle_button.dart';
import 'package:firstdemo/widgets/custom_buttons.dart';
import 'package:firstdemo/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController forgetcontroller = TextEditingController();
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
                        "Forget Pasword",
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 8),
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
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email"),
                          SizedBox(height: 5),
                          CustomTextfields(
                            controller: forgetcontroller,
                            text: "Email",
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: CustomButtons(
                              text: "Send code",
                              func: () {
                                Get.toNamed(AppRoutes.verifyotp);
                              },
                            ),
                          ),
                        ],
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
