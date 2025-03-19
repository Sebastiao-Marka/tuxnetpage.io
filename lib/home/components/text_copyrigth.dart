import 'package:flutter/material.dart';

import '../../styles/color.dart';

class TextCopyrigth extends StatefulWidget {
  const TextCopyrigth({super.key});

  @override
  State<TextCopyrigth> createState() => _TextCopyrigthState();
}

class _TextCopyrigthState extends State<TextCopyrigth> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Soluções',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: TuxCores.tux_roxo,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: ' diferenciadas',
            style: TextStyle(
              color: TuxCores.tux_amarelo,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' e ',
            style: TextStyle(
              color: TuxCores.tux_roxo,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'personalizadas',
            style: TextStyle(
              color: TuxCores.tux_amarelo,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ',\nde acordo com a sua necessidade!',
            style: TextStyle(
              color: TuxCores.tux_roxo,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
