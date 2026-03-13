import 'package:get/get.dart';
import 'package:kyle_machinetask/app/model/menu_item.dart';

class TakeawayViewModel extends GetxController {

  var selectedCategory = 'All Items'.obs;
  var currentIndex = 0.obs;

  final List<String> categories = [
    'All Items', 'Addons', 'Biriyani', 'Breakfast', 'Lunch', 'Dinner'
  ];

  final List<MenuItemModel> allItems = menuItems;
  RxList<MenuItemModel> filteredItems = <MenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredItems.assignAll(allItems);
  }

  void selectCategory(String category) {
    selectedCategory.value = category;

    if (category == 'All Items') {
      
      filteredItems.assignAll(allItems);
    } else {
    
      filteredItems.assignAll(
        allItems.where((item) => item.category == category).toList(),
      );
    }
  }

  void changeTab(int index) {
    currentIndex.value = index;
  }
}