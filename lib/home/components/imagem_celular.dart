import 'package:flutter/material.dart';

class ImagemCelular extends StatefulWidget {
  const ImagemCelular({super.key});

  @override
  State<ImagemCelular> createState() => _ImagemCelularState();
}

class _ImagemCelularState extends State<ImagemCelular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 30),
        child: Image.asset(
          "assets/imagens/CELULAR.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
