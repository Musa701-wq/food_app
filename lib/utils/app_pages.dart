import 'package:firstdemo/core/Forget/forget_screen.dart';
import 'package:firstdemo/core/cart/add_to_cart_screen.dart';
import 'package:firstdemo/core/login_screen/login_screen.dart';
import 'package:firstdemo/core/onboarding_screens/onboarding_screen.dart';
import 'package:firstdemo/core/order/order_screen.dart';
import 'package:firstdemo/core/otpverfiy/otp_verify_screen.dart';
import 'package:firstdemo/core/profile/edit_profile_screen.dart';
import 'package:firstdemo/core/profile/personal_details.dart';
import 'package:firstdemo/core/profile/profile_screen.dart';
import 'package:firstdemo/core/search/search_screen.dart';
import 'package:firstdemo/core/signup_screen/signup_screen.dart';
import 'package:firstdemo/core/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../core/home_screen/home_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.forget, page: () => ForgetScreen()),
    GetPage(name: AppRoutes.signup, page: () => SignupScreen()),
    GetPage(name: AppRoutes.verifyotp, page: () => OtpVerifyScreen()),
    GetPage(name: AppRoutes.search, page: () => SearchScreen()),
    GetPage(name: AppRoutes.addtocart, page: () => AddToCartScreen()),
    GetPage(name: AppRoutes.orderscreen, page: () => OrderScreen()),
    GetPage(name: AppRoutes.profilescreen, page: () => ProfileScreen()),
    GetPage(name: AppRoutes.editprofilescreen, page: () => EditProfileScreen()),
    GetPage(
      name: AppRoutes.personaldetailscreen,
      page: () => PersonaldetailScreen(),
    ),
  ];
}
