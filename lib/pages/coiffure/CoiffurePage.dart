import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/widgets/CardWidget.dart';

class CoiffurePage extends StatefulWidget {
  const CoiffurePage({super.key});

  @override
  State<CoiffurePage> createState() => _CoiffurePageState();
}

class _CoiffurePageState extends State<CoiffurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      body: SingleChildScrollView(
        child: Column(
          children: [_body()],
        ),
      ),
    );
  }

  Widget _body() {
    return Container(
      child: Column(
        children: [_logo(), _recherche(), _bouton_search(),_coiffeur_liste()],
      ),
    );
  }

  Widget _logo() {
    return Container(
      child: Image.asset(
        "images/logo.png",
        width: 150,
      ),
    );
  }

  Widget _recherche() {
    return Container(
      width: 250,
        child: TextFormField(
          style: TextStyle(
            color: ColorPages
                .COLOR_DORE_FONCE, // Couleur du texte lorsqu'on saisit
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search, color: ColorPages.COLOR_DORE_FONCE,),
            fillColor: ColorPages.COLOR_NOIR.withOpacity(.55),
            hintText: "Recherche",
            hintStyle: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: ColorPages.COLOR_DORE_FONCE),
            ),
            border: OutlineInputBorder(

              borderSide: BorderSide(width: 1, color: ColorPages.COLOR_DORE_FONCE),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ));
  }

  Widget _bouton_search(){
    return Container(
      child:ElevatedButton(
        onPressed: (){},
        child: Text("Rechecrhe",style: TextStyle(color: ColorPages.COLOR_BLANC),),
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorPages.COLOR_DORE_FONCE,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            )),
      ) ,
    );
  }

  Widget _coiffeur_liste() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {
                Navigator.pushNamed(context, Routes.DetailsPage);
              }),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {}),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {}),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {}),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {}),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {}),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "choisir",
              text: "Hena Ndombele",
              text_coif: "coiffeuse",
              text_annee: "2 ans",
              onPressed: () {})
        ],
      ),
    );
  }
}
