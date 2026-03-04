import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(const BKApp());

class BKApp extends StatelessWidget {
  const BKApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5EBDC), // Fondo Crema
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFB74D), // Naranja
          elevation: 0,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

// COMPONENTE GLOBAL DE NAVEGACIÓN (Para evitar errores de "const")
class MyBottomNav extends StatelessWidget {
  final int currentIndex;
  const MyBottomNav({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.brown,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.lunch_dining), label: "Productos"),
        BottomNavigationBarItem(icon: Icon(Icons.confirmation_number), label: "Combos"),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Restaurante"),
      ],
    );
  }
}