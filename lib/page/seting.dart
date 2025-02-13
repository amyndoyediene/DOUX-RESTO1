import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Seting(),
    );
  }
}

class Seting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/doux1.jpeg'), // Remplace avec ton image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuItem(title: "Contact", icon: Icons.phone, onTap: () {}),
                MenuItem(
                    title: "Nos services",
                    icon: Icons.room_service,
                    onTap: () {}),
                MenuItem(
                    title: "Boutique", icon: Icons.shopping_bag, onTap: () {}),
                MenuItem(
                    title: "Politique de confidentialité",
                    icon: Icons.privacy_tip,
                    onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  MenuItem({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                color: Colors.white, size: 24), // Icône correspondant au titre
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
