import 'package:flutter/material.dart';
import 'products_screen.dart';
import 'main.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuestro Menú")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _tile(context, Icons.lunch_dining, "Hamburguesas", const ProductsScreen()),
          _tile(context, Icons.fastfood, "Snaks", null),
          _tile(context, Icons.icecream, "Postres", null),
          _tile(context, Icons.local_drink, "Bebidas", null),
        ],
      ),
      bottomNavigationBar: const MyBottomNav(currentIndex: 1),
    );
  }

  Widget _tile(context, icon, title, target) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.brown, size: 30),
        title: Text(title, style: const TextStyle(fontSize: 20)),
        onTap: () { if(target != null) Navigator.push(context, MaterialPageRoute(builder: (context) => target)); },
      ),
    );
  }
}