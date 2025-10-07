import 'package:get/get.dart';

class RestaurantController extends GetxController {
  var selectedCategoryIndex = 0.obs;
  RxString selectedvalue = ''.obs;

  void selectCategory(int index, String value) {
    selectedCategoryIndex.value = index;
    selectedvalue.value = value;
  }
}
