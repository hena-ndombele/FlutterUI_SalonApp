import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/widgets/BoutonWidget.dart';
import 'package:salon_app_ui/widgets/BoutonWidgetNoColor.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 480,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/image5.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 120, left: 20),
                color: ColorPages.COLOR_NOIR.withOpacity(.65),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                "Nous vous proposons les meilleurs de nos services.",
                            style: TextStyle(
                              color: ColorPages.COLOR_GRIS,
                              fontWeight: FontWeight.bold,
                              fontSize: 29,
                              fontFamily: 'Schyler',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Reservez votre place en un clic.",
              style: TextStyle(
                color: ColorPages.COLOR_GRIS,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 18,
                fontFamily: 'Schyler',
              ),
            ),
            SizedBox(height: 30),
            Expanded(
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BoutonWidget(
                      text: "Se connecter",
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.ConnexionPage);
                      }),
                  SizedBox(height: 20),
                  BoutonWidgetNoColor(
                      text: "Créer mon compte",
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.CreationComptePage);
                      }),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
