import 'package:flutter/material.dart';

import '../home/components/menu_components.dart';
import '../home/components/pe_da_pagina.dart';
import '../home/widget_manu.dart';
import '../styles/color.dart';
import 'components/widget_missao.dart';
import 'components/widget_quem_somos.dart';
import 'components/widget_videos.dart';

class PageSobre extends StatefulWidget {
  const PageSobre({super.key});

  @override
  State<PageSobre> createState() => _PageSobreState();
}

class _PageSobreState extends State<PageSobre> {
  var corFonte = TuxCores.tux_roxo;
  List<String> menu = MenuComponents.menu;

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
                itemCount: menu.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return WidgetManu(menu: menu[index]);
                },
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: TuxCores.tux_banco_cina,
        child: ListView(
          children: [
            SizedBox(height: 60),
            Center(
              child: Text(
                "Sobre a Tuxnet",
                style: TextStyle(
                    color: TuxCores.tux_roxo,
                    fontSize: 54,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 60),
            WidgetQuemSomos(),
            SizedBox(height: 50),
            WidgetMissao(),
            Center(
              child: SizedBox(
                  width: 250,
                  height: 130,
                  child: Column(
                    children: [
                      Text("Confira alguns ",
                          style: TextStyle(
                              color: TuxCores.tux_roxo,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Text("vídeos sobre Nós:",
                          style: TextStyle(
                              color: TuxCores.tux_roxo,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))
                    ],
                  )),
            ),
            Center(
              child: SizedBox(
                width: 600,
                height: 400,
                child: WidgetVideos(),
              ),
            ),
            SizedBox(height: 150),
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
