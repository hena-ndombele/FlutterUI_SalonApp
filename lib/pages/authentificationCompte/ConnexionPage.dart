import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/widgets/BoutonWidget.dart';
import 'package:salon_app_ui/widgets/ChampSaisieWidget.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      body: Stack(
        children: [_body(context)],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Center(
            child: Container(
                child: Column(children: [
          SizedBox(
            height: 50,
          ),
          _logo(),
          _text(),
          _text_connexion(),
          SizedBox(
            height: 50,
          ),
          _form(),
          SizedBox(
            height: 15,
          ),
                  text_password_oublie(),
                  SizedBox(
                    height: 20,
                  ),
          _bouton_connexion(),
          SizedBox(
            height: 20,
          ),
          _compte_text()
        ]))),
      ),
    );
  }

  Widget _logo() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "images/logo.png",
            width: 140,
          ),
        ]);
  }

  Widget _text() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text(
            "Se connecter",
            style: TextStyle(
                color: ColorPages.COLOR_DORE_FONCE,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
        ),
      ],
    );
  }

  Widget _text_connexion() {
    return Container(
      child: Text(
        "Pour utiliser l'application, vous devez être connecté.",
        style: TextStyle(
            color: ColorPages.COLOR_GRIS,
            fontSize: 10,
            fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget _form() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          ChampSaisieWidget(
            prefixIcon: Icons.email,
            ctrl: _email,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },
            label: 'email',
            hintext: 'email',
          ),
          SizedBox(
            height: 20,
          ),
          ChampSaisieWidget(
            prefixIcon: Icons.lock,
            ctrl: _password,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },
            label: 'password',
            hintext: 'password',
          )
        ],
      ),
    );
  }

  Widget _bouton_connexion() {
    return Container(
      child: BoutonWidget(text: "Se connecter", onPressed: () {
        Navigator.pushNamed(context, Routes.BottomNavBarWidget);
      }),
    );
  }

  Widget _compte_text() {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Text(
              "vous avez n'avez pas de compte?",
              style: TextStyle(color: ColorPages.COLOR_BLANC, fontSize: 12),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.CreationComptePage);
                },
                child: Text(
                  "Créer un compte",
                  style: TextStyle(
                    color: ColorPages.COLOR_DORE_FONCE,
                    decoration: TextDecoration.underline,
                      decorationColor: ColorPages.COLOR_DORE_FONCE
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget text_password_oublie(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Routes.MotDePasseOubliePage);
            },
            child: Text("Mot de passe oublié?",style: TextStyle(color: ColorPages.COLOR_BLANC,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,decorationColor: ColorPages.COLOR_BLANC),),
          ),
        ),
      ],
    );
  }
}
