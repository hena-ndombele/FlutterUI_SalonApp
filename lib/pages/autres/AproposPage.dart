import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';

class AproposPage extends StatefulWidget {
  const AproposPage({super.key});

  @override
  State<AproposPage> createState() => _AproposPageState();
}

class _AproposPageState extends State<AproposPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "A propos",
            style: TextStyle(color: ColorPages.COLOR_DORE_FONCE, fontFamily: "Schyler"),
          ),
          backgroundColor: ColorPages.COLOR_NOIR,
        ),
        body: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Text(
                    "Version 1.0.0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: ColorPages.COLOR_BLANC,
                        fontFamily: 'Schyler'),
                  ),
                ),
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://hena-ndombele.github.io/Hena-Ndombele/')),
                  child: const Text('Termes & Conditions d\'utilisation',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: ColorPages.COLOR_BLANC,
                          fontFamily: 'Schyler')),
                ),
                const SizedBox(height: 30.0),
                InkWell(
                  onTap: () => contactThankfulPerson(),
                  child: const Text('Contactez le développeur',
                      style: TextStyle(
                        color: ColorPages.COLOR_BLANC,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontFamily: 'Schyler')),
                ),
              ],
            ),
          );
        }));
  }

  Future contactThankfulPerson() async {
    showModalBottomSheet<String?>(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      builder: (context) {
        return Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('images/wat.jpeg', width: 30),
                    title: Text('Whastapp'),
                    onTap: () =>
                        launchUrl(Uri.parse('https://wa.me/+243830376004')),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/link.png',
                      width: 30,
                    ),
                    title: Text('Linkedin'),
                    onTap: () => launchUrl(
                        Uri.parse('https://www.linkedin.com/in/hena-ndombele')),
                  ),
                  ListTile(
                    leading: Image.asset('images/mail.png', width: 30),
                    title: Text('Email'),
                    onTap: () => launch(
                      'mai lto:henandombele2021@gmail.com',
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
