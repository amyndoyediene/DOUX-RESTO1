import 'package:amimobile9/page/onglet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // L'écran d'accueil
    );
  }
}

// Écran d'accueil
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black), // Icône retour
      onPressed: () {
        Navigator.pop(context); // Retour à la page précédente
      },
    ),
  ),
      body: Stack(
        children: [
          // Image de fond
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/doux1.jpeg'), // Remplacez par votre image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu principal
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Bouton Bénéficiaire
                ElevatedButton(
                  onPressed: () {
                    // Navigation vers l'écran Bénéficiaire
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HoPage()),
                    );
                  },
                  child: Text(
                    'Bénéficiaire',
                    style: TextStyle(
                        color: Colors.white), // Couleur du texte en blanc
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Couleur de fond du bouton en noir
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                ),
                SizedBox(height: 20), // Espace entre les boutons
// Bouton Restaurateur
                ElevatedButton(
                  onPressed: () {
                    // Navigation vers l'écran Restaurateur
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RestaurateurScreen()),
                    );
                  },
                  child: Text(
                    'Restaurateur',
                    style: TextStyle(
                        color: Colors.white), // Couleur du texte en blanc
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Couleur de fond du bouton en noir
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// // Écran Bénéficiaire
// class BeneficiaireScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bénéficiaire'),
//       ),
//       body: Center(
//         child: Text('Vous êtes sur l\'écran Bénéficiaire'),
//       ),
//     );
//   }
// }

// Écran Restaurateur
class RestaurateurScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurateur'),
      ),
      body: Center(
        child: Text('Vous êtes sur l\'écran Restaurateur'),
      ),
    );
  }
}
