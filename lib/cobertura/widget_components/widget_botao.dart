import 'package:flutter/material.dart';

import '../../styles/color.dart';

class WidgetBotao extends StatefulWidget {
  final text;
  const WidgetBotao({super.key, required this.text});

  @override
  State<WidgetBotao> createState() => _WidgetBotaoState();
}

class _WidgetBotaoState extends State<WidgetBotao> {
  double _posicaoX = 50;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 50),
        child: AnimatedContainer(
            duration: Duration(milliseconds: 400), // Duração da animação
            curve: Curves.decelerate, // Animação linear
            transform: Matrix4.translationValues(800, _posicaoX, 10),
            child: Row(children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      onHover: (value) {
                        setState(() {
                          _posicaoX = value ? 20 : 25;
                        });
                      },
                      onPressed: () {
                        // Adicione a ação desejada aqui
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: TuxCores.tux_amarelo,
                        padding:
                            EdgeInsets.symmetric(horizontal: 64, vertical: 30),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: Text(
                        widget.text,
                        style:
                            TextStyle(color: TuxCores.tux_banco, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
