import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonEight extends StatefulWidget {
  final Data data;
  ButtonEight({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonEight();
  }
}

class _ButtonEight extends State<ButtonEight> {
  
  netxNumber() {
    setState(() {
      if (widget.data.num8 == 9) {
        widget.data.num8 = 1;
      } else {
        widget.data.num8++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button8 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num8.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button8;
  }
}
