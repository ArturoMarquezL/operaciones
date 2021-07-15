import 'dart:html';

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("Entrar operaciones"),
          onPressed: () {
            Navigator.pushNamed(context, 'operaciones');
          }),
    );
  }
}
