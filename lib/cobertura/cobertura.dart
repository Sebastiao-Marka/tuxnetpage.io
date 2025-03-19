import 'package:flutter/material.dart';
import 'package:tuxnet/styles/color.dart';

import '../home/components/menu_components.dart';
import '../home/components/pe_da_pagina.dart';
import '../home/widget_manu.dart';
import 'widget_components/widget_botao.dart';
import 'widget_components/widget_cidades.dart';
import 'widget_components/widget_map.dart';

class Cobertura extends StatefulWidget {
  const Cobertura({super.key});

  @override
  State<Cobertura> createState() => _CoberturaState();
}

class _CoberturaState extends State<Cobertura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        title: Image.asset("assets/imagens/logo-amarelo.png"),
        actions: [
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4),
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
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 800, vertical: 30),
              child: Text(
                "Cobertura",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TuxCores.tux_amarelo,
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(height: 20),
            WidgetCidades(),
            WidgetMap(),
            WidgetBotao(text: 'Conhecer planos'),
            SizedBox(height: 50),
            PeDaPagina(),
            Container(
              color: TuxCores.tux_roxo,
              padding: EdgeInsets.symmetric(horizontal: 200),
              child: Center(
                child: Image.asset('assets/imagens/logo-amarelo_roda_pe.png',
                    width: 150),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
