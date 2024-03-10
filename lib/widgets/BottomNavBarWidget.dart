import 'package:flutter/material.dart';
import 'package:salon_app_ui/pages/calendrier/CalendrierPage.dart';
import 'package:salon_app_ui/pages/coiffure/CoiffurePage.dart';
import 'package:salon_app_ui/pages/demarrage/HomePage.dart';
import 'package:salon_app_ui/pages/profil/ProfilePage.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int currentTab = 0;
  final List<Widget> body = [
    HomePage(),
    CoiffurePage(),
    CalendrierPage(),
    ProfilePage(),
  ];

  Widget currentScreen = HomePage();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR.withOpacity(.55),
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        color: ColorPages.COLOR_NOIR.withOpacity(.55),
        shape: CircularNotchedRectangle(),
        child: Container(
          color: ColorPages.COLOR_NOIR.withOpacity(.55),
          height: 80,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomePage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home,
                              size: 21,
                              color: currentTab == 0
                                  ? ColorPages.COLOR_DORE_FONCE
                                  : ColorPages.COLOR_BLANC),
                          Text('Accueil',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? ColorPages.COLOR_DORE_FONCE
                                      : ColorPages.COLOR_BLANC,
                                  fontSize: 13))
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = CoiffurePage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search,
                              size: 21,
                              color: currentTab == 1
                                  ? ColorPages.COLOR_DORE_FONCE
                                  : ColorPages.COLOR_BLANC),
                          Text(
                            'Coiffeur',
                            style: TextStyle(
                                color: currentTab == 1
                                    ? ColorPages.COLOR_DORE_FONCE
                                    : ColorPages.COLOR_BLANC,
                                fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = CalendrierPage();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_month,
                              size: 21,
                              color: currentTab == 2
                                  ? ColorPages.COLOR_DORE_FONCE
                                  : ColorPages.COLOR_BLANC),
                          Text('Agenda',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? ColorPages.COLOR_DORE_FONCE
                                      : ColorPages.COLOR_BLANC,
                                  fontSize: 13))
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfilePage();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                              size: 21,
                              color: currentTab == 3
                                  ? ColorPages.COLOR_DORE_FONCE
                                  : ColorPages.COLOR_BLANC),
                          Text('Moi',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? ColorPages.COLOR_DORE_FONCE
                                      : ColorPages.COLOR_BLANC,
                                  fontSize: 13))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
