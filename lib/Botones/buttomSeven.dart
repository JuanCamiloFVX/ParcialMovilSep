import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonSeven extends StatefulWidget {
  final Data data;
  ButtonSeven({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonSeven();
  }
}

class _ButtonSeven extends State<ButtonSeven> {
  netxNumber() {
    setState(() {
      if (widget.data.num7 == 9) {
        widget.data.num7 = 1;
      } else {
        widget.data.num7++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button7 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num7.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button7;
  }
}
