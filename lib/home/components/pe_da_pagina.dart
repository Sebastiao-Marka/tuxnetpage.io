import 'package:flutter/material.dart';

import '../../styles/color.dart';

class PeDaPagina extends StatefulWidget {
  const PeDaPagina({super.key});

  @override
  State<PeDaPagina> createState() => _PeDaPaginaState();
}

class _PeDaPaginaState extends State<PeDaPagina> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      color: TuxCores.tux_roxo,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Seção Matriz e Lojas
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Matriz',
                        style: TextStyle(
                            color: TuxCores.tux_banco,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(
                      'Rua 2 Lot. Maria Luiza I e II, 49-Mandacaru, Riachão do jaculpe/BA-44640-000',
                      style: TextStyle(
                        color: TuxCores.tux_banco,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Lojas',
                        style: TextStyle(
                            color: TuxCores.tux_banco,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(
                        'Rua Monsenhor Moisés Gonçalves do Couto, 2246, Campo Limpo, Feira de Santana/BA-44032-491',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                    Text(
                        'Rua Alexandre Carneiro Figueiredo, 138, Centro, Riachão do Jacuípe/BA-44640-000',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                    Text(
                        'Av Sampaio, 1120-Sawaya, Sala 806, Feira de Santana/BA-44025-280',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                    Text(
                        'Praça Major Benicio Viana, 7, Centro, Santaluz/BA-48880-000',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                    Text(
                        'Praça Professor Borges, 6-Centro, Valente/BA-48890-000',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                    Text('Praça 27 de julho, Centro, Retirolândia/BA-48750-000',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                    Text('Rua E, Feira IX, 64, Feira de Santana/BA-40301-110',
                        style: TextStyle(
                          color: TuxCores.tux_banco,
                        )),
                  ],
                ),
              ),
              // Seção Fale Conosco
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fale Conosco',
                        style: TextStyle(
                            color: TuxCores.tux_banco,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.phone, color: TuxCores.tux_banco),
                        TextButton(
                          onPressed: () {},
                          child: Text('0800 722 6662',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone, color: TuxCores.tux_banco),
                        TextButton(
                          onPressed: () {},
                          child: Text('0800 722 6662',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone, color: TuxCores.tux_banco),
                        TextButton(
                          onPressed: () {},
                          child: Text('comercial@redetuxnet.com.br',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, color: TuxCores.tux_banco),
                        TextButton(
                          onPressed: () {},
                          child: Text('sac@redetuxnet.com.br',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, color: TuxCores.tux_banco),
                        TextButton(
                          onPressed: () {},
                          child: Text('financeiro@redetuxnet.com.br',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: TuxCores.tux_banco,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('https://www.facebook.com/redetuxnet',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.camera_alt,
                          color: TuxCores.tux_banco,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('https://www.instagram.com/redetuxnet',
                              style: TextStyle(
                                color: TuxCores.tux_banco,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
