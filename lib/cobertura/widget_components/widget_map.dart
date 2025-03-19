import 'package:flutter/material.dart';

import '../../styles/color.dart';

class WidgetMap extends StatefulWidget {
  const WidgetMap({super.key});

  @override
  State<WidgetMap> createState() => _WidgetMapState();
}

class _WidgetMapState extends State<WidgetMap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 200, right: 200),
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: TuxCores.tux_preto),
        borderRadius: BorderRadius.circular(40),
        color: TuxCores.tux_banco,
        boxShadow: [
          BoxShadow(
            color: TuxCores.tux_preto.withOpacity(0.51),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(20, 20),
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Center(child: Text("Aqui vai o mapa")),
    );
  }
}
