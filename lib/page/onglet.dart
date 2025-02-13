
import 'package:amimobile9/page/liste/listeresto.dart';
import 'package:amimobile9/page/login1.dart';
import 'package:amimobile9/page/new.dart';
import 'package:amimobile9/page/note.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HoPage(),
    );
  }
}

class HoPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HoPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    RestaurantList(),
    newpage (),
    AvisPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "DouxResto",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor:
            Colors.red, // Couleur des icônes sélectionnées en vert
        unselectedItemColor: Colors
            .red.shade300, // Couleur des icônes non sélectionnées en vert clair
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_label),
            label: 'Nouveaute',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hide_image_rounded),
            label: 'Coup de coeur',
          ),
          
        ],
      ),
    );
  }
}
