import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonFour extends StatefulWidget {
  final Data data;
  ButtonFour({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonFour();
  }
}

class _ButtonFour extends State<ButtonFour> {
  netxNumber() {
    setState(() {
      if (widget.data.num4 == 9) {
        widget.data.num4 = 1;
      } else {
        widget.data.num4++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button4 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num4.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button4;
  }
}
