import 'package:coffee_shop/screens/home/widgets/coffee_grid.dart';
import 'package:coffee_shop/screens/home/widgets/filter_coffee.dart';
import 'package:coffee_shop/screens/home/widgets/search.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: TextStyle(color: Colors.white60, fontSize: 14),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                'Bilzen, Tanjungbalai',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ],
          ),
          SizedBox(height: 50),
          const Search(),
          SizedBox(height: 50),
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Color.fromRGBO(148, 114, 87, 1),
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage('assets/home/banner.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1),
                  BlendMode.darken,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Promo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Buy one get\none FREE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          FilterCoffee(),
          // CoffeeGrid()
          Expanded(
            child:
                CoffeeGrid(), // La grille prend tout l'espace restant et peut scroller
          ),
        ],
      ),
    );
  }
}
