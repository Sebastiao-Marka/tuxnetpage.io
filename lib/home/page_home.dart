import 'package:flutter/material.dart';

import '../styles/color.dart';
import 'components/baixe_o_app.dart';
import 'components/imagem_celular.dart';
import 'components/imagens_components.dart';
import 'components/img_rural_fibra.dart';
import 'components/menu_components.dart';
import 'components/pe_da_pagina.dart';
import 'components/text_copyrigth.dart';
import 'widget_manu.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ImagensComponents(),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ImagemCelular()),
              BaixeOApp()
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextCopyrigth(),
                SizedBox(height: 20),
                ImgRuralFibra(),
              ],
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Adicione a ação desejada aqui
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: TuxCores.tux_roxo,
                padding: EdgeInsets.symmetric(horizontal: 64, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text(
                'Assine Já',
                style: TextStyle(color: TuxCores.tux_banco, fontSize: 25),
              ),
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
    );
  }
}
