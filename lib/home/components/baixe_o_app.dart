import 'package:flutter/material.dart';

import '../../styles/color.dart';
import 'imgs_qrcode.dart';

class BaixeOApp extends StatefulWidget {
  const BaixeOApp({super.key});

  @override
  State<BaixeOApp> createState() => _BaixeOAppState();
}

class _BaixeOAppState extends State<BaixeOApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Padding(
        padding: const EdgeInsets.only(right: 130.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 10),
            Container(
              alignment: Alignment.topRight,
              child: Text("Baixe nosso app",
                  style: TextStyle(
                      color: TuxCores.tux_roxo,
                      fontSize: 55,
                      fontWeight: FontWeight.w800)),
            ),
            SizedBox(height: 10),
            Text(
              "2ª via de NF e Boleto ",
              style: TextStyle(fontSize: 20, color: TuxCores.tux_preto),
            ),
            Text(
              "Desbloqueio de internet",
              style: TextStyle(fontSize: 20, color: TuxCores.tux_preto),
            ),
            Text(
              "Verificação de Consumo e muito mais.",
              style: TextStyle(fontSize: 20, color: TuxCores.tux_preto),
            ),
            SizedBox(height: 20),
            ImgsQrcode(),
          ],
        ),
      ),
    );
  }
}
