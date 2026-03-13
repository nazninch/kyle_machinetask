import 'package:get/get.dart';
import 'package:kyle_machinetask/app/model/menu_item.dart';

class ItemDetailViewModel extends GetxController {
  final MenuItemModel item;

  ItemDetailViewModel({required this.item});

  var quantity = 1.obs;

  void increment() => quantity.value++;

  void decrement() {
    if (quantity.value > 1) quantity.value--;
  }

  double get totalPrice {
    double price = double.tryParse(
      item.price.replaceAll('AED', '').trim()
    ) ?? 0.0;
    return price * quantity.value;
  }
}