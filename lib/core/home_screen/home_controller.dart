import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedCategoryIndex = (-1).obs;
  void selectCategory(int index) {
    selectedCategoryIndex.value = index;
  }
}
