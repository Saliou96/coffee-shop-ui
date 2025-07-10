import 'package:coffee_shop/models/coffee_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categories = ['All Coffee', 'Macchiato', 'Latte', 'Americano'].obs;
  var selectedIndex = 0.obs;

  List<Coffee> allCoffees = [
    Coffee(
      name: "Caffe Mocha",
      description: "Deep Foam",
      price: 4.53,
      rating: 4.8,
      category: "Macchiato",
      image: "assets/home/image1.png",
    ),
    Coffee(
      name: "Flat White",
      description: "Espresso",
      price: 3.53,
      rating: 4.8,
      category: "Latte",
      image: "assets/home/image2.png",
    ),
    Coffee(
      name: "Caffe Mocha",
      description: "Deep Foam",
      price: 4.53,
      rating: 4.8,
      category: "Americano",
      image: "assets/home/image1.png",
    ),
    Coffee(
      name: "Flat White",
      description: "Espresso",
      price: 3.53,
      rating: 4.8,
      category: "Latte",
      image: "assets/home/image2.png",
    ),
  ];

  List<Coffee> get filteredCoffees {
    if (selectedIndex.value == 0) return allCoffees;
    String selectedCategory = categories[selectedIndex.value];
    return allCoffees.where((c) => c.category == selectedCategory).toList();
  }

  void selectCategory(int index) {
    selectedIndex.value = index;
  }
}
