import 'package:flutter/material.dart';
import 'package:salon_app_ui/pages/authentificationCompte/ConnexionPage.dart';
import 'package:salon_app_ui/pages/autres/AproposPage.dart';
import 'package:salon_app_ui/pages/calendrier/CalendrierPage.dart';
import 'package:salon_app_ui/pages/changerMotdePasse/ChangerMotDePassePage.dart';
import 'package:salon_app_ui/pages/coiffure/CoiffurePage.dart';
import 'package:salon_app_ui/pages/creationCompte/CreationComptePage.dart';
import 'package:salon_app_ui/pages/demarrage/HomePage.dart';
import 'package:salon_app_ui/pages/demarrage/IntroPage.dart';
import 'package:salon_app_ui/pages/demarrage/SplashPage.dart';
import 'package:salon_app_ui/pages/detailcoiffeurs/DetailCoiffurePage.dart';
import 'package:salon_app_ui/pages/motdepasseoublie/MotDePasseOubliePage.dart';
import 'package:salon_app_ui/pages/paiement/PaiementPage.dart';
import 'package:salon_app_ui/pages/profil/EditerProfilPage.dart';
import 'package:salon_app_ui/pages/profil/ProfilePage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/widgets/BottomNavBarWidget.dart';



class RoutesManager{

  static Route route(RouteSettings r) {

    switch (r.name){

      case Routes.ConnexionPage:
        return MaterialPageRoute(builder: (_)=>ConnexionPage());
        case Routes.SplashPage:
        return MaterialPageRoute(builder: (_)=>SplashPage());
        case Routes.IntroPage:
        return MaterialPageRoute(builder: (_)=>IntroPage());
        case Routes.CreationComptePage:
        return MaterialPageRoute(builder: (_)=>CreationComptePage());
        case Routes.HomePage:
        return MaterialPageRoute(builder: (_)=>HomePage());
        case Routes.MotDePasseOubliePage:
        return MaterialPageRoute(builder: (_)=>MotDePasseOubliePage());
        case Routes.ChangerMotDePassePage:
        return MaterialPageRoute(builder: (_)=>ChangerMotDePassePage());
        case Routes.CoiffurePage:
        return MaterialPageRoute(builder: (_)=>ChangerMotDePassePage());
        case Routes.CalendrierPage:
        return MaterialPageRoute(builder: (_)=>CalendrierPage());
        case Routes.ProfilePage:
        return MaterialPageRoute(builder: (_)=>ProfilePage());
        case Routes.BottomNavBarWidget:
        return MaterialPageRoute(builder: (_)=>BottomNavBarWidget());
      case Routes.AproposPage:
        return MaterialPageRoute(builder: (_)=>AproposPage());
      case Routes.DetailsPage:
        return MaterialPageRoute(builder: (_)=>DetailCoiffurePage());
      case Routes.EditerProfilPage:
        return MaterialPageRoute(builder: (_)=>EditerProfilPage());
        case Routes.PaiementPage:
        return MaterialPageRoute(builder: (_)=>PaiementPage());
        default:
          return MaterialPageRoute(builder: (_)=>CoiffurePage());
    }

  }




}