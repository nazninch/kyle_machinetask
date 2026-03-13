import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_machinetask/app/view_model/takeaway_view_model.dart';
import 'package:kyle_machinetask/shared/widgets/menucard.dart';


class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Get.find<TakeawayViewModel>();

    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: vm.filteredItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.82,
          ),
          itemBuilder: (context, index) {
            return MenuCard(item: vm.filteredItems[index]);
          },
        ),
      ),
    );
  }
}