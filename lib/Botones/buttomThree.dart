import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonThree extends StatefulWidget {
  final Data data;
  ButtonThree({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonThree();
  }
}

class _ButtonThree extends State<ButtonThree> {
  netxNumber() {
    setState(() {
      if (widget.data.num3 == 9) {
        widget.data.num3 = 1;
      } else {
        widget.data.num3++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button3 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num3.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button3;
  }
}
