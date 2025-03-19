import 'package:flutter/material.dart';

import '../../styles/color.dart';

class WidgetQuemSomos extends StatefulWidget {
  const WidgetQuemSomos({super.key});

  @override
  State<WidgetQuemSomos> createState() => _WidgetQuemSomosState();
}

class _WidgetQuemSomosState extends State<WidgetQuemSomos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100),
      height: MediaQuery.of(context).size.height * 0.57,
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
      child: Padding(
        padding: const EdgeInsets.all(68.0),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(
              child: Text(
                "Somos a TUXNET, uma operadora de telecomunicações com presença regional, criada para oferecer ao mercado infraestrutura de alta capacidade e uma plataforma multiserviços para tráfego dados, voz e imagem de alta confiabilidade.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              child: Text(
                "Nossa rede possui pontos de presença (POP) em diversos municípios, e está presente nos pontos de troca de tráfego com as principais operadoras do mercado, sendo possível oferecer soluções de comunicação de alta qualidade para qualquer destino do mundo, através de uma rede IP híbrida, compostas por enlaces em fibra óptica e rádios digitais com total redundância.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              child: Text(
                "Oferecemos soluções diferenciadas e personalizadas, de acordo com a necessidade de cada cliente. Mais do que um serviço de transporte de dados, a TUXNET desenvolve soluções, com análise técnica e financeira, a fim de indicar o melhor serviço para atender as necessidades do cliente, sempre com o objetivo de garantir que seu empreendimento obtenha resultados positivos, aumentando a eficiência com redução de custo operacional.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              child: Text(
                "Sabemos que o investimento feito por sua empresa deve ter um retorno associado, e pensando nisso, a TUXNET traça suas metas na integração da comunicação dos usuários e na transmissão de qualquer tipo de informação com segurança, rapidez e eficiência.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
