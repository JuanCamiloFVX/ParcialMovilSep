import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonFive extends StatefulWidget {
  final Data data;
  ButtonFive({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonFive();
  }
}

class _ButtonFive extends State<ButtonFive> {
  netxNumber() {
    setState(() {
      if (widget.data.num5 == 9) {
        widget.data.num5 = 1;
      } else {
        widget.data.num5++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button5 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num5.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button5;
  }
}
