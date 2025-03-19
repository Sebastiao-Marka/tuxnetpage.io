import 'package:flutter/material.dart';

import '../cobertura/widget_components/widget_botao.dart';
import '../home/components/menu_components.dart';
import '../home/components/pe_da_pagina.dart';
import '../home/widget_manu.dart';
import '../styles/color.dart';
import 'widget_components/widget_vantagens.dart';
import 'widget_panos.dart';

class ParaVoce extends StatefulWidget {
  const ParaVoce({super.key});

  @override
  State<ParaVoce> createState() => _ParaVoceState();
}

class _ParaVoceState extends State<ParaVoce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 160,
          title: Image.asset("assets/imagens/logo-amarelo.png"),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.4),
              child: Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width * 0.4,
                height: 160,
                child: ListView.builder(
                  itemCount: MenuComponents.menu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return WidgetManu(menu: MenuComponents.menu[index]);
                  },
                ),
              ),
            )
          ],
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: TuxCores.tux_banco_cina),
              color: TuxCores.tux_banco,
              boxShadow: [
                BoxShadow(
                  color: TuxCores.tux_banco_cina.withOpacity(1),
                  spreadRadius: 15,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: ListView(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 200, vertical: 70),
                child: Text(
                  "Nossas vantagens",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TuxCores.tux_amarelo,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(height: 20),
              WidgetVantagens(),
              SizedBox(height: 150),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.380,
                color: TuxCores.tux_roxo,
                child: Center(
                  child: Column(
                    spacing: 5,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          "Nossos planos",
                          style: TextStyle(
                            color: TuxCores.tux_amarelo,
                            fontSize: 50,
                          ),
                        ),
                      ),
                      WidgetPanos(),
                      WidgetBotao(text: 'Assine já'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              PeDaPagina(),
              Container(
                color: TuxCores.tux_roxo,
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Center(
                  child: Image.asset('assets/imagens/logo-amarelo_roda_pe.png',
                      width: 150),
                ),
              ),
            ])));
  }
}
