import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonOne extends StatefulWidget {
  final Data data;
  ButtonOne({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonOne();
  }
}

class _ButtonOne extends State<ButtonOne> {
  netxNumber() {
    setState(() {
      if (widget.data.num1 == 9) {
        widget.data.num1 = 1;
      } else {
        widget.data.num1++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button1 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num1.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button1;
  }
}
