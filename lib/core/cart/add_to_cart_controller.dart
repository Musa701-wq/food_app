import 'package:get/get.dart';

class AddToCartController extends GetxController {
  var data = <Map<String, dynamic>>[].obs;

  RxBool isEdit = false.obs;

  var selecteditems = <String, dynamic>{}.obs;

  void setorderselectedindex(Map<String, dynamic> items) {
    selecteditems.value = items;
  }

  void setEdit(bool isEditvalue) {
    isEdit.value = isEditvalue;
  }

  void addItem(Map<String, dynamic> item) {
    Map<String, dynamic> sanitizedItem = {
      "name": item["name"].toString(),
      "price": item["price"].toString(),
      "image": item["image"].toString(),
      "quantity": item["quantity"] ?? 1,
      "size": item["size"]?.toString() ?? "",
    };
    data.add(sanitizedItem);
  }

  void removeItem(int index) {
    data.removeAt(index);
  }

  void increaseQuantity(int index) {
    data[index]["quantity"] = (data[index]["quantity"] ?? 0) + 1;
    data.refresh();
  }

  void decreaseQuantity(int index) {
    if ((data[index]["quantity"] ?? 0) > 1) {
      data[index]["quantity"] = data[index]["quantity"]! - 1;
      data.refresh();
    }
  }
}
