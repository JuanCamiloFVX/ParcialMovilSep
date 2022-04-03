import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonTwo extends StatefulWidget {
  final Data data;
  ButtonTwo({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonTwo();
  }
}

class _ButtonTwo extends State<ButtonTwo> {
  netxNumber() {
    setState(() {
      if (widget.data.num2 == 9) {
        widget.data.num2 = 1;
      } else {
        widget.data.num2++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button2 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num2.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button2;
  }
}
