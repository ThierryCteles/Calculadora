import 'package:cauculadora/components/botao.dart';
import 'package:flutter/material.dart';

class LinhaBotao extends StatelessWidget {
  final List<Botao> buttons;

  LinhaBotao(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttons.fold(<Widget>[], (list, b) {
            list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1), b]);
            return list;
          })),
    );
  }
}
