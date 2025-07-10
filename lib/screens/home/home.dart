import 'package:coffee_shop/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 340,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Tabs : All Coffee, Macchiato, etc.
                    // Liste de produits
                  ],
                ),
              ),
            ),
          ),
          HomeTop(),
        ],
      ),

      // // Bottom nav bar (optionnelle)
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      //   ],
      // ),
    );
  }
}
