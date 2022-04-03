import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonSix extends StatefulWidget {
  final Data data;
  ButtonSix({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonSix();
  }
}

class _ButtonSix extends State<ButtonSix> {
  netxNumber() {
    setState(() {
      if (widget.data.num6 == 9) {
        widget.data.num6 = 1;
      } else {
        widget.data.num6++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button6 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num6.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button6;
  }
}
