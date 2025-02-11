import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantList(),
    );
  }
}

class RestaurantList extends StatelessWidget {
  final List<Map<String, String>> restaurants = [
    {
      'nom': 'Chez Marie',
      'specialite': 'Plat japonnais',
      'adresse': 'Yoff',
      'ville': 'Dakar',
      'telephone': '76-777-63-76',
      'image': 'assets/r.jpeg'
    },
    {
      'nom': 'Chez DABA',
      'specialite': 'Plat Africain',
      'adresse': 'Mbao',
      'ville': 'Dakar',
      'telephone': '77-755-75-44',
      'image': 'assets/r2.jpeg'
    },
    {
      'nom': 'Chez Ndeye',
      'specialite': 'Plat senegalaise',
      'adresse': 'Hersent',
      'ville': 'thies',
      'telephone': '70-443-07-65',
      'image': 'assets/r1.jpeg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des restaurants"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    restaurant['image']!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nom: ${restaurant['nom']}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Spécialité: ${restaurant['specialite']}"),
                        Text("Adresse: ${restaurant['adresse']}"),
                        Text("Ville: ${restaurant['ville']}"),
                        Text("Téléphone: ${restaurant['telephone']}"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailRestaurant(restaurant),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    child: const Text(
                      "Accéder",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailRestaurant extends StatelessWidget {
  final Map<String, String> restaurant;

  const DetailRestaurant(this.restaurant, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Détails de ${restaurant['nom']}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                restaurant['image']!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text("Nom: ${restaurant['nom']}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Spécialité: ${restaurant['specialite']}"),
            Text("Adresse: ${restaurant['adresse']}"),
            Text("Ville: ${restaurant['ville']}"),
            Text("Téléphone: ${restaurant['telephone']}"),
          ],
        ),
      ),
    );
  }
}
