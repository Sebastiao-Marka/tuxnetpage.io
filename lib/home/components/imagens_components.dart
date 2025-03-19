import 'package:flutter/material.dart';

class ImagensComponents extends StatefulWidget {
  const ImagensComponents({super.key});

  @override
  State<ImagensComponents> createState() => _ImagensComponentsState();
}

class _ImagensComponentsState extends State<ImagensComponents> {
  List<String> imagens = [
    "assets/imagens/DOG_TUXNET_1200x250px.png",
    "assets/imagens/PREGUICA_TUXNET_1200x250px.png",
    "assets/imagens/TARTARUGA_TUXNET_1200x250px.png",
  ];

  late double _posicaoX; // Inicia na direita da tela
  int time = 1;
  @override
  void initState() {
    _posicaoX = 0;
    super.initState();
    _iniciarAnimacao();
  }

  void _iniciarAnimacao() async {
    await Future.delayed(Duration(milliseconds: time * 1000), () {
      setState(() {
        time = 10;
        _posicaoX = -1800; // Move para fora da tela à esquerda
      });
    });
    await Future.delayed(Duration(milliseconds: time * 1000), () {
      setState(() {
        time = 10;
        _posicaoX = -3600; // Move para fora da tela à esquerda
      });
    });
    await Future.delayed(Duration(milliseconds: time * 1000), () {
      setState(() {
        _posicaoX = -1800; // Move para fora da tela à esquerda
      });
    });
    await Future.delayed(Duration(milliseconds: time * 1000), () {
      setState(() {
        _posicaoX = 0; // Move para fora da tela à esquerda
      });
    });
    await Future.delayed(Duration(milliseconds: time * 1000), () {
      setState(() {
        _posicaoX = -1800; // Move para fora da tela à esquerda
      });
    });
    _iniciarAnimacao();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: time), // Duração da animação
      curve: Curves.decelerate, // Animação linear
      transform: Matrix4.translationValues(_posicaoX, 0, 0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagens[0],
                  width: MediaQuery.of(context).size.width * 0.96,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagens[1],
                  width: MediaQuery.of(context).size.width * 0.96,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagens[2],
                  width: MediaQuery.of(context).size.width * 0.96,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
