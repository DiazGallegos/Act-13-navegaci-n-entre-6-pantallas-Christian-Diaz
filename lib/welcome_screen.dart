import 'package:flutter/material.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 60, backgroundColor: Colors.blueAccent, child: Icon(Icons.person, size: 60, color: Colors.white)),
            const SizedBox(height: 20),
            const Text("¡Bienvenido!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.brown)),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB0B0), shape: const StadiumBorder()),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
              child: const Text("Continuar"),
            ),
          ],
        ),
      ),
    );
  }
}