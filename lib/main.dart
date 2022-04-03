import 'dart:html';

import 'package:parcial_cuadromagico/estructura.dart';
import 'package:parcial_cuadromagico/gridview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(title: Text("Cuadro Magico"), titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),backgroundColor: Colors.cyan,),
    body: Cuadro(),
  )));
}