import 'package:coffee_shop/controllers/category_controller.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoffeeGrid extends StatelessWidget {
  final controller = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 0,horizontal: 16),
        itemCount: controller.filteredCoffees.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          Coffee coffee = controller.filteredCoffees[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Image.asset(
                        coffee.image,
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 14),
                            SizedBox(width: 2),
                            Text(
                              coffee.rating.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffee.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        coffee.description,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ ${coffee.price.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFD17842),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(6),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
