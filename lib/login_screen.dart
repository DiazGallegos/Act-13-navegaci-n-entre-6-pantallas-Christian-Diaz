import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DIAZ GALLEGOS CHRISTIAN JESUS - 6ºI", style: TextStyle(color: Colors.brown, fontSize: 14))),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Iniciar Sesión:", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown)),
            const SizedBox(height: 20),
            const Text("correo electrónico:"),
            const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const Text("contraseña:"),
            const TextField(obscureText: true, decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB0B0), shape: const StadiumBorder()),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen())),
                child: const Text("LISTO", style: TextStyle(color: Colors.black)),
              ),
            ),
            const Spacer(),
            const Text("No tienes cuenta?"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB0B0), shape: const StadiumBorder()),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen())),
              child: const Text("Registrate Ya", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}