import 'package:flutter/material.dart';
import 'main.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final burgers = ["Whopper", "Mega", "Stacker", "Long", "Rodeo"];
    return Scaffold(
      appBar: AppBar(title: const Text("Hamburguesas:")),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: burgers.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Row(
            children: [
              const Icon(Icons.lunch_dining, color: Colors.brown, size: 40), // Icono Grande
              const SizedBox(width: 30),
              Text(burgers[i], style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500)), // Texto Grande
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNav(currentIndex: 1),
    );
  }
}