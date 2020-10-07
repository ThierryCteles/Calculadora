import 'package:cauculadora/Models/Memoria.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/Teclado.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memoria memoria = Memoria();

  _onPressed(String comand) {
    setState(() {
      memoria.applyCommand(comand);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memoria.value),
          Teclado(_onPressed),
        ],
      ),
    );
  }
}
