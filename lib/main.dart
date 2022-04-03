import 'package:parcial_cuadromagico/estructura.dart';
import 'package:parcial_cuadromagico/gridview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
    appBar: AppBar(title: Text("Cuadro Magico")),
    body: Cuadro(),
  )));
}
