import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Regístrate:", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown)),
            const SizedBox(height: 15),
            const Text("Nombre:"), const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
            const Text("Correo electrónico:"), const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
            const Text("Contraseña:"), const TextField(obscureText: true, decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
            const Text("Confirmar contraseña:"), const TextField(obscureText: true, decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB0B0), shape: const StadiumBorder()),
                onPressed: () => Navigator.pop(context),
                child: const Text("LISTO", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}