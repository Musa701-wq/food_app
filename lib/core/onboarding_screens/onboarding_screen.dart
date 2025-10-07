import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firstdemo/widgets/custom_buttons.dart';
import 'onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Image.asset(
                  controller.currentImage,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              Text(
                controller.currentTitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 12),

              Text(
                controller.currentSubtitle,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 70),

              CustomButtons(
                text:
                    controller.currentIndex.value ==
                        controller.images.length - 1
                    ? "Get Started"
                    : "Next",
                func: controller.next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
