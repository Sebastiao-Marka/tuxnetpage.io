import 'package:flutter/material.dart';

import '../styles/color.dart';
import '../switch_direction.dart';

class WidgetManu extends StatefulWidget {
  final String menu;
  WidgetManu({required this.menu});

  @override
  _WidgetManuState createState() => _WidgetManuState();
}

class _WidgetManuState extends State<WidgetManu> {
  Color corFonte = TuxCores.tux_roxo;
  Color corFonte2 = TuxCores.tux_roxo;
  bool exibeMenu = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          exibeMenu
              ? MouseRegion(
                  onHover: (event) {
                    setState(() {
                      exibeMenu = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      exibeMenu = false;
                    });
                  },
                  child: Column(
                    spacing: 10,
                    children: [
                      TextButton(
                          onPressed: () {
                            SwitchDirection.directions("Para você", context);
                          },
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Text("Para você",
                              style: TextStyle(
                                  color: corFonte,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          onHover: (isHovering) {
                            setState(() {
                              if (isHovering) {
                                corFonte = TuxCores.tux_amarelo;
                              } else {
                                corFonte = TuxCores.tux_roxo;
                              }
                            });
                          }),
                      TextButton(
                          onPressed: () {
                            SwitchDirection.directions("Para empresa", context);
                          },
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Text("Para empresas",
                              style: TextStyle(
                                  color: corFonte2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          onHover: (isHovering) {
                            setState(() {
                              if (isHovering) {
                                corFonte2 = TuxCores.tux_amarelo;
                              } else {
                                corFonte2 = TuxCores.tux_roxo;
                              }
                            });
                          })
                    ],
                  ),
                )
              : SizedBox(),
          TextButton(
              onPressed: () {
                if (widget.menu == "Planos") {
                  setState(() {
                    exibeMenu = !exibeMenu;
                  });
                } else {
                  SwitchDirection.directions(widget.menu, context);
                }
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: exibeMenu
                  ? SizedBox(width: 50)
                  : Text(widget.menu,
                      style: TextStyle(
                          color: corFonte,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
              onHover: (isHovering) {
                setState(() {
                  if (isHovering) {
                    corFonte = TuxCores.tux_amarelo;
                  } else {
                    corFonte = TuxCores.tux_roxo;
                  }
                });
              }),
        ],
      ),
    );
  }
}
