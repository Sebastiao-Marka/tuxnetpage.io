import 'package:flutter/material.dart';

import '../../styles/color.dart';

class WidgetVantagens extends StatefulWidget {
  const WidgetVantagens({super.key});

  @override
  State<WidgetVantagens> createState() => _WidgetVantagensState();
}

class _WidgetVantagensState extends State<WidgetVantagens> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            spacing: 10,
            children: [
              Row(spacing: 10, children: [
                Icon(
                  Icons.check_circle,
                  color: TuxCores.tux_amarelo,
                  size: 40,
                ),
                Text(
                  "Wi-Fi de alta performance",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 20),
              Row(spacing: 10, children: [
                Icon(
                  Icons.check_circle,
                  color: TuxCores.tux_amarelo,
                  size: 40,
                ),
                Text(
                  "Instalação Inclusa",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 20),
              Row(spacing: 10, children: [
                Icon(
                  Icons.check_circle,
                  color: TuxCores.tux_amarelo,
                  size: 40,
                ),
                Text(
                  "Internet fibra óptica",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            spacing: 10,
            children: [
              Row(spacing: 10, children: [
                Icon(
                  Icons.check_circle,
                  color: TuxCores.tux_amarelo,
                  size: 40,
                ),
                Text(
                  "Estabilidade na conexão",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 20),
              Row(spacing: 10, children: [
                Icon(
                  Icons.check_circle,
                  color: TuxCores.tux_amarelo,
                  size: 40,
                ),
                Text(
                  "Deezer e HBOMax",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 20),
              Row(spacing: 10, children: [
                Icon(
                  Icons.check_circle,
                  color: TuxCores.tux_amarelo,
                  size: 40,
                ),
                Text(
                  "Lojas físicas",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
