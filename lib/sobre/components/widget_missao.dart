import 'package:flutter/material.dart';

import '../../styles/color.dart';

class WidgetMissao extends StatefulWidget {
  const WidgetMissao({super.key});

  @override
  State<WidgetMissao> createState() => _WidgetMissaoState();
}

class _WidgetMissaoState extends State<WidgetMissao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: TuxCores.tux_roxo),
              borderRadius: BorderRadius.circular(40),
              color: TuxCores.tux_banco,
              boxShadow: [
                BoxShadow(
                  color: TuxCores.tux_roxo.withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(20, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                Text(
                  "Missão",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    "Oferecer serviços de telecomunicações com qualidade e bom atendimento, superando as expectativas dos clientes.",
                    style: TextStyle(
                        color: TuxCores.tux_preto,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: TuxCores.tux_roxo),
              borderRadius: BorderRadius.circular(40),
              color: TuxCores.tux_banco,
              boxShadow: [
                BoxShadow(
                  color: TuxCores.tux_roxo.withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(20, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                Text(
                  "Valores",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    "Ética: Na condução dos nossos negócios e em relação aos nossos diversos públicos; Profissionalismo Trabalho em equipe Respeito Honestidade",
                    style: TextStyle(
                        color: TuxCores.tux_preto,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: TuxCores.tux_roxo),
              borderRadius: BorderRadius.circular(40),
              color: TuxCores.tux_banco,
              boxShadow: [
                BoxShadow(
                  color: TuxCores.tux_roxo.withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(20, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                Text("Visão",
                    style: TextStyle(
                        color: TuxCores.tux_roxo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    "Ser uma empresa de excelência, referência em infraestrutura e conhecimento técnico, com reconhecimento dos usuários.",
                    style: TextStyle(
                        color: TuxCores.tux_preto,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
