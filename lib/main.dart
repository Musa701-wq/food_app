import 'package:firstdemo/utils/app_routes.dart';

import 'package:firstdemo/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/cart/add_to_cart_controller.dart';
import 'theme_controller.dart';
import 'utils/app_pages.dart';

void main() {
  Get.put(AddToCartController(), permanent: true);
  runApp(const MyApp());
}

final ThemeController controller = Get.put(ThemeController());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Food',
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: controller.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
