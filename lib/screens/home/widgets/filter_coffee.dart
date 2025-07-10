import 'package:coffee_shop/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterCoffee extends StatelessWidget {
  final controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Obx(() => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: List.generate(
                controller.categories.length,
                (index) {
                  final isSelected = controller.selectedIndex.value == index;
                  return GestureDetector(
                    onTap: () => controller.selectCategory(index),
                    child: Container(
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        color: isSelected ? Color.fromRGBO(198,124,78, 1) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                )
                              ]
                            : [],
                      ),
                      child: Text(
                        controller.categories[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
