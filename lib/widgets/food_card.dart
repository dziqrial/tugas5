import 'package:flutter/material.dart';
import '../models/food.dart';
import '../pages/detail_page.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.fastfood, color: Colors.deepOrange),
        title: Text(food.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Rp ${food.price.toStringAsFixed(0)}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(food: food),
            ),
          );
        },
      ),
    );
  }
}