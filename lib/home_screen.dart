import 'package:flutter/material.dart';
import 'menu_screen.dart';
import 'main.dart'; // Importante para MyBottomNav

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BURGER KING", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold)),
        leading: const Icon(Icons.menu, color: Colors.brown),
        actions: const [Icon(Icons.account_circle, size: 30, color: Colors.brown), SizedBox(width: 10)],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Image.network(
              'https://images.unsplash.com/photo-1571091718767-18b5b1457add?w=500',
              height: 180,
              fit: BoxFit.cover, // <--- CORREGIDO
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("¡Bienvenido! Puedes ganar coronas con cada compra", textAlign: TextAlign.center),
          ),
          const Text("Nuevos Kings", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB0B0), shape: const StadiumBorder()),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen())),
            child: const Text("Elige tu King"),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNav(currentIndex: 0),
    );
  }
}