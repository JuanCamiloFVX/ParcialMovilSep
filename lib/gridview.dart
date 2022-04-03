import 'package:flutter/material.dart';
import 'package:parcial_cuadromagico/Botones/buttomEight.dart';
import 'package:parcial_cuadromagico/Botones/buttomFive.dart';
import 'package:parcial_cuadromagico/Botones/buttomFour.dart';
import 'package:parcial_cuadromagico/Botones/buttomNine.dart';
import 'package:parcial_cuadromagico/Botones/buttomSeven.dart';
import 'package:parcial_cuadromagico/Botones/buttomSix.dart';
import 'package:parcial_cuadromagico/Botones/buttomThree.dart';
import 'Botones/buttomOne.dart';
import 'Botones/buttomTwo.dart';

class Cuadro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CuadroState();
  }
}

class _CuadroState extends State<Cuadro> {
  final data = Data(
      num1: 1,
      num2: 1,
      num3: 1,
      num4: 1,
      num5: 1,
      num6: 1,
      num7: 1,
      num8: 1,
      num9: 1);

  int hrz1 = 0;
  int hrz2 = 0;
  int hrz3 = 0;
  int ver1 = 0;
  int ver2 = 0;
  int ver3 = 0;
  int dgn1 = 0;
  int dgn2 = 0;

  String answer = "Esperando Validacion...";

  sumMatriz() {
    setState(() {
      hrz1 = data.num1 + data.num2 + data.num3;
      hrz2 = data.num4 + data.num5 + data.num6;
      hrz3 = data.num7 + data.num8 + data.num9;
      ver1 = data.num1 + data.num4 + data.num7;
      ver2 = data.num2 + data.num5 + data.num8;
      ver3 = data.num3 + data.num6 + data.num9;
      dgn1 = data.num1 + data.num5 + data.num9;
      dgn2 = data.num7 + data.num5 + data.num3;
    });
  }

  result() {
    sumMatriz();
    setState(() {
      if (data.num1 != data.num2 &&
          data.num1 != data.num3 &&
          data.num1 != data.num4 &&
          data.num1 != data.num5 &&
          data.num1 != data.num6 &&
          data.num1 != data.num7 &&
          data.num1 != data.num8 &&
          data.num1 != data.num9) {
        if (hrz1 == 15 &&
            hrz2 == 15 &&
            hrz3 == 15 &&
            ver1 == 15 &&
            ver2 == 15 &&
            ver3 == 15 &&
            dgn1 == 15) {
          answer = "Es un cuadrado magico";
        } else {
          answer = "No es un cuadrado magico";
        }
      } else {
        answer = "No es un cuadrado magico";
      }
    });
  }

//---------------------------------------------------------------------//-------------------------------------------
  @override
  Widget build(BuildContext context) {
    final elevatedButton = ElevatedButton.styleFrom(
        primary: Colors.green,
        shadowColor: Colors.red[700],
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: Size(80, 40),
        side: BorderSide(width: 2, color: Colors.black));

    return Scaffold(
        body: SafeArea(
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonOne(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonTwo(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonThree(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonFour(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonFive(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonSix(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonSeven(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonEight(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonNive(data: data)],
            ),
          ),
          Text(
            this.answer,
            style: TextStyle(fontSize: 20, letterSpacing: 2),textAlign: TextAlign.center,
          ),
          ElevatedButton(
              style: elevatedButton,
              onPressed: () {
                result();
              },
              child: Text(
                "Validar Cuadro Magico",
                style: TextStyle(
                  letterSpacing: 2,
                ),
              )),
        ],
      ),
    ));
  }
}

class Data {
  int num1;
  int num2;
  int num3;
  int num4;
  int num5;
  int num6;
  int num7;
  int num8;
  int num9;

  Data({
    required this.num1,
    required this.num2,
    required this.num3,
    required this.num4,
    required this.num5,
    required this.num6,
    required this.num7,
    required this.num8,
    required this.num9,
  });
}
