import 'package:firstdemo/utils/app_routes.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final images = [
    "assets/images/onboarding1.jpg",
    "assets/images/onboarding2.jpeg",
    "assets/images/onboarding3.png",
  ];

  final titles = ["All your favorites", "Fast Delivery", "Easy Payment"];

  final subtitles = [
    "All your favourite foods at one place, you just need to place the order, we do the rest.",
    "Get your order delivered to your doorstep quickly and safely.",
    "Pay easily with multiple payment methods available.",
  ];

  var currentIndex = 0.obs;

  String get currentImage => images[currentIndex.value];
  String get currentTitle => titles[currentIndex.value];
  String get currentSubtitle => subtitles[currentIndex.value];

  void next() {
    if (currentIndex.value < images.length - 1) {
      currentIndex.value++;
    } else {
      Get.toNamed(AppRoutes.login);
    }
  }
}
