import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/gridview.dart';

class ButtonNive extends StatefulWidget {
  final Data data;
  ButtonNive({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _ButtonNive();
  }
}

class _ButtonNive extends State<ButtonNive> {
  netxNumber() {
    setState(() {
      if (widget.data.num9 == 9) {
        widget.data.num9 = 1;
      } else {
        widget.data.num9++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button9 = Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num9.toString(),
              style: TextStyle(fontSize: 50),
            ))
      ],
    );
    return button9;
  }
}
