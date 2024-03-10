import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/utils/RoutesManager.dart';

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SplashPage,
      onGenerateRoute: RoutesManager.route,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: ColorPages.COLOR_DORE_FONCE)
        )
      ),
    );
  }
}
