import 'package:firstdemo/utils/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 4), () {
      Get.toNamed(AppRoutes.onboarding);
    });
  }
}
