import 'package:flutter/material.dart';
import 'botao.dart';
import 'linha_botao.dart';

class Teclado extends StatelessWidget {
  final void Function(String) cb;

  Teclado(this.cb);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          LinhaBotao(
            [
              Botao.big(text: "AC", cb: cb, color: Botao.DARK),
              Botao(text: "%", cb: cb, color: Botao.DARK),
              Botao.operations(text: "/", cb: cb),
            ],
          ),
          SizedBox(
            width: 1,
          ),
          LinhaBotao([
            Botao(text: "7", cb: cb),
            Botao(text: "8", cb: cb),
            Botao(text: "9", cb: cb),
            Botao.operations(text: "x", cb: cb)
          ]),
          SizedBox(
            width: 1,
          ),
          LinhaBotao([
            Botao(text: "4", cb: cb),
            Botao(text: "5", cb: cb),
            Botao(text: "6", cb: cb),
            Botao.operations(text: "-", cb: cb)
          ]),
          SizedBox(
            width: 1,
          ),
          LinhaBotao([
            Botao(text: "1", cb: cb),
            Botao(text: "2", cb: cb),
            Botao(text: "3", cb: cb),
            Botao.operations(text: "+", cb: cb),
          ]),
          SizedBox(
            width: 1,
          ),
          LinhaBotao([
            Botao.big(text: "0", cb: cb),
            Botao(text: ",", cb: cb),
            Botao.operations(text: "=", cb: cb),
          ]),
          SizedBox(
            width: 1,
          ),
        ],
      ),
    );
  }
}
