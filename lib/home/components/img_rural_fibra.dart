import 'package:flutter/material.dart';

class ImgRuralFibra extends StatefulWidget {
  const ImgRuralFibra({super.key});

  @override
  State<ImgRuralFibra> createState() => _ImgRuralFibraState();
}

class _ImgRuralFibraState extends State<ImgRuralFibra> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 200,
      children: [
        Image.asset(
          "assets/imagens/imgRural.png",
          width: 450,
        ),
        Image.asset(
          "assets/imagens/imgFibra.png",
          width: 450,
        ),
      ],
    );
  }
}
