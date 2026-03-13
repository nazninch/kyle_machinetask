import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_machinetask/app/view_model/takeaway_view_model.dart';

class CategoryTabbar extends StatelessWidget {
  CategoryTabbar(TakeawayViewModel vm, {super.key});

  final TakeawayViewModel vm = Get.find<TakeawayViewModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemCount: vm.categories.length,
        itemBuilder: (context, index) {
          final cat = vm.categories[index];

          return Obx(() {
            final isSelected = cat == vm.selectedCategory.value;

            return GestureDetector(
              onTap: () => vm.selectCategory(cat),
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isSelected ? Colors.blue : Colors.grey.shade300,
                  ),
                ),
                child: Center(
                  child: Text(
                    cat,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}