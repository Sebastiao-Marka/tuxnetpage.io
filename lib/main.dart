import 'package:flutter/material.dart';
import 'package:tuxnet/sobre/page_sobre.dart';
import 'package:tuxnet/tux_routers/tux_router.dart';

import 'cobertura/cobertura.dart';
import 'home/page_home.dart';
import 'para_voce/page_para_voce.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tux Net',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 247, 247, 247)),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        TuxRouter.PageHome: (ctx) => HomePage(),
        TuxRouter.PageSobre: (ctx) => PageSobre(),
        TuxRouter.Cobertura: (ctx) => Cobertura(),
        TuxRouter.ParaVoce: (ctx) => ParaVoce(),
        // TuxRouter.ParaEmpresa: (ctx) => ParaEmpresa(),
      },
    );
  }
}
