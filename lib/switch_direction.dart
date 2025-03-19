import 'package:flutter/material.dart';

import 'tux_routers/tux_router.dart';

class SwitchDirection {
  static directions(rota, context) {
    switch (rota) {
      case "Home":
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(TuxRouter.PageHome);
        break;
      case "Sobre":
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(TuxRouter.PageSobre);
        break;
      case "Cobertura":
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(TuxRouter.Cobertura);
        break;
      case "Para você":
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(TuxRouter.ParaVoce);
        break;
      case "Para empresa":
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(TuxRouter.ParaEmpresa);
        break;
    }
  }
}
