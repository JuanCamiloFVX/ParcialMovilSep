import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class WidgetDinamico extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WidgetDinamico();
  }
}

class _WidgetDinamico extends State<WidgetDinamico> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Cuadro()],
    );
  }
}
