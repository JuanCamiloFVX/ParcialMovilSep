import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class Estructura extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Estructura();
  }
}

class _Estructura extends State<Estructura> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Cuadro()],
    );
  }
}
