import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImgsQrcode extends StatefulWidget {
  const ImgsQrcode({super.key});

  @override
  State<ImgsQrcode> createState() => _ImgsQrcodeState();
}

class _ImgsQrcodeState extends State<ImgsQrcode> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () async {
            const url = 'https://apps.apple.com/br/app/tuxnet/id1530094992';
            if (await canLaunch(url)) {
              await launch(url, forceSafariVC: false, forceWebView: false);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Image.asset("assets/imagens/appleStore_qr-code.png"),
        ),
        GestureDetector(
          onTap: () {
            launch(
                'https://play.google.com/store/apps/details?id=com.hubsoft_client_app.tuxnet&hl=pt_BR',
                forceSafariVC: false,
                forceWebView: false);
          },
          child: Image.asset("assets/imagens/playStore_qr-code.png"),
        ),
      ],
    );
  }
}
