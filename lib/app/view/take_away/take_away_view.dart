import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_machinetask/app/view_model/takeaway_view_model.dart';
import 'package:kyle_machinetask/shared/widgets/appbar.dart';
import 'package:kyle_machinetask/shared/widgets/category_tabbar.dart';
import 'package:kyle_machinetask/shared/widgets/menugrid.dart';

class TakeAway extends StatelessWidget {
  const TakeAway({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Get.put(TakeawayViewModel());

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppbarWidget(title: "Restaurant POS"),
      body: Column(
        children: [
          CategoryTabbar(vm),
          const Expanded(child: MenuGrid()), 
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: vm.currentIndex.value,
          onTap: vm.changeTab,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }

}