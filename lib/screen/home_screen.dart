import 'package:flutter/material.dart';
import 'add_food_screen.dart'; // Adjust import path

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Ordering App')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddFoodScreen()),
            );
          },
          child: const Text('Go to Add Food Screen'),
        ),
      ),
    );
  }
}
