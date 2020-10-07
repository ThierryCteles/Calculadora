import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const Default = Color.fromRGBO(112, 112, 112, 1);
  static const Operations = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Botao({
    @required this.cb,
    @required this.text,
    this.big = false,
    this.color = Default,
  });
  Botao.big({
    @required this.cb,
    @required this.text,
    this.big = true,
    this.color = Default,
  });
  Botao.operations({
    @required this.cb,
    @required this.text,
    this.big = false,
    this.color = Operations,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
