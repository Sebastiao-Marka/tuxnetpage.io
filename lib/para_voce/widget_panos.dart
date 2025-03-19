import 'package:flutter/material.dart';

import '../styles/color.dart';

class WidgetPanos extends StatefulWidget {
  const WidgetPanos({super.key});

  @override
  State<WidgetPanos> createState() => _WidgetPanosState();
}

class _WidgetPanosState extends State<WidgetPanos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: TuxCores.tux_banco,
      ),
      width: MediaQuery.of(context).size.width * 0.800,
      height: MediaQuery.of(context).size.width * 0.200,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/imagens/COMBO_PLUS_500_MEGA_CARTÃO.png"),
            Image.asset("assets/imagens/COMBO_PLUS_700 MEGA_CARTÃO.png"),
            Image.asset("assets/imagens/COMBO_PLUS_900_MEGA_CARTÃO.png"),
            Image.asset("assets/imagens/COMBO_PLUS_1100_MEGA_CARTÃO.png"),
          ],
        ),
      ),
    );
  }
}
