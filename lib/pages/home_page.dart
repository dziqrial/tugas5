import 'package:flutter/material.dart';
import '../data/food_data.dart';
import '../widgets/food_card.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warung Nusantara'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return FoodCard(food: foodList[index]);
        },
      ),
    );
  }
}