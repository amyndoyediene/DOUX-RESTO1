import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: testPage(),
    );
  }
}

class testPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fond d'écran
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/doux1.jpeg'), // Remplace avec ton image de fond
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu du formulaire
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Titre "Login"
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 15),
                  // Champ de saisie 1
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mic),
                      hintText: "Fide in",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // Champ de saisie 2
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Tweir in...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // Option Game Services
                  Row(
                    children: [
                      Icon(Icons.videogame_asset, color: Colors.red),
                      SizedBox(width: 5),
                      Text("Game Services", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Bouton "Sign Up"
                  ElevatedButton(
                    onPressed: () {
                      // Action à ajouter
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
