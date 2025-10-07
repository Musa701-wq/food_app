import 'package:firstdemo/widgets/circle_button.dart';
import 'package:firstdemo/widgets/custom_buttons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart'
    show OtpTextField;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                        "Otp Verification",
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Please enter your otp",
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
                          OtpTextField(
                            numberOfFields: 5,
                            borderColor: Theme.of(context).primaryColor,

                            showFieldAsBox: true,
                            //runs when a code is typed in
                            onCodeChanged: (String code) {
                              //handle validation or checks here
                            },

                            onSubmit: (String verificationCode) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Verification Code"),
                                    content: Text(
                                      'Code entered is $verificationCode',
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: CustomButtons(text: "Verify", func: () {}),
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
