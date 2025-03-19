import 'package:flutter/material.dart';

import '../../styles/color.dart';

class WidgetCidades extends StatefulWidget {
  const WidgetCidades({super.key});

  @override
  State<WidgetCidades> createState() => _WidgetCidadesState();
}

class _WidgetCidadesState extends State<WidgetCidades> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.27,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            spacing: 30,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Feira de Santana',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Ichu',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Pé de Serra',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.27,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            spacing: 30,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Riachão do Jacuípe',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Retirolândia',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Santaluz',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.13,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            spacing: 30,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'São Domingos',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Serra Preta',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.location_on,
                    color: TuxCores.tux_amarelo,
                    size: 20,
                  ),
                  Text(
                    'Valente',
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
