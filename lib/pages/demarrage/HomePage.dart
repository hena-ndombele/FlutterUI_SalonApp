import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/widgets/CardWidget.dart';
import 'package:salon_app_ui/widgets/BottomNavBarWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      body: SizedBox(
        child: _body(),
      ),


    );
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage("images/image3.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 60, left: 20),
                color: ColorPages.COLOR_NOIR.withOpacity(.55),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "images/logo.png",
                          width: 100,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Bienvenu(e), ",
                            style: TextStyle(
                              color: ColorPages.COLOR_BLANC,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Schyler',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Henandombele2021@gmail.com",
                            style: TextStyle(
                              color: ColorPages.COLOR_DORE_FONCE,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Schyler',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/image3.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 60, left: 20),
                  color: ColorPages.COLOR_NOIR.withOpacity(.55),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/logo.png",
                            width: 100,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Bienvenu(e), ",
                              style: TextStyle(
                                color: ColorPages.COLOR_BLANC,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Schyler',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Henandombele2021@gmail.com",
                              style: TextStyle(
                                color: ColorPages.COLOR_DORE_FONCE,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Schyler',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        _text_categorie(),
        Flexible(
          child: _cardModel(),
        ),
        _text_service(),
        _coiffure_liste(),
      ],
    );
  }

  Widget _titre_widget() {
    return Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: Container(
          height: 230,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                image: AssetImage("images/image3.jpg"),
                fit: BoxFit.fill,
              )),
          child: Container(
            padding: EdgeInsets.only(top: 60, left: 20),
            color: ColorPages.COLOR_NOIR.withOpacity(.55),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      "images/logo.png",
                      width: 100,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Bienvenu(e), ",
                        style: TextStyle(
                            color: ColorPages.COLOR_BLANC,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                            fontSize: 15),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Henandombele2021@gmail.com",
                        style: TextStyle(
                            color: ColorPages.COLOR_DORE_FONCE,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                            fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _text_categorie() {
    return Column(
      children: [
        Container(
          child: Text(
            "Nos models",
            style: TextStyle(
                color: ColorPages.COLOR_DORE_FONCE,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
        ),
      ],
    );
  }

  Widget _cardModel() {
    return Row(
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Container(
              width: 150,
              height: 100,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 0,
                  color: ColorPages.COLOR_BLANC,
                  child: Column(
                    children: [
                      Container(
                        color: ColorPages.COLOR_BLANC,
                        margin: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              color: ColorPages.COLOR_NOIR,
                              size: 40.0,
                            ),
                            Text(
                              "Homme",
                              style: TextStyle(
                                color: ColorPages.COLOR_NOIR,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            width: 150,
            height: 100,
            child: GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 0,
                color: ColorPages.COLOR_BLANC,
                child: Column(
                  children: [
                    Container(
                      color: ColorPages.COLOR_BLANC,
                      margin: EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            color: ColorPages.COLOR_NOIR,
                            size: 40.0,
                          ),
                          Text(
                            "Femme",
                            style: TextStyle(
                              color: ColorPages.COLOR_NOIR,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _text_service() {
    return Column(
      children: [
        Container(
          child: Text(
            "Nos services.",
            style: TextStyle(
                color: ColorPages.COLOR_DORE_FONCE,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
        ),
      ],
    );
  }

  Widget _coiffure_liste(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardWidget(
              imagePath: "images/image3.jpg",
              buttonText: "Choisir",
              text: "Hena Ndombele",
              text_coif: "Coiffeuse",
              text_annee: "2 ans",
              onPressed: (){
                Navigator.pushNamed(context, Routes.DetailsPage);
              }),
          CardWidget(
              imagePath: "images/image4.jpg",
              buttonText: "Choisir",
              text: "Exaucé Umba",
              text_coif: "Coiffeur",
              text_annee: "1 ans",
              onPressed: (){}),
          CardWidget(
              imagePath: "images/image5.jpg",
              buttonText: "Choisir",
              text: "Emmanuel",
              text_coif: "Coiffeur",
              text_annee: "5 ans",
              onPressed: (){})
        ],
      ),
    );
  }
}
