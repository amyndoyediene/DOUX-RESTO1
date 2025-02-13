import 'package:flutter/material.dart';

class newpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouveaute'),
      ),
      body: Center(
        child: Text('Vous êtes sur l\'écran nouveaute'),
      ),
    );
  }
}
