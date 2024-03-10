import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker picker = ImagePicker();
  XFile? imageSelectione;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Mon Profil",
          style: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
        ),
        backgroundColor: ColorPages.COLOR_NOIR,
      ),
      body: _body(context),

    );
  }

  Widget _body(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: InkWell(
              onTap: () async {},
              child: imageSelectione == null
                  ? CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage(
                        'images/image5.jpg',
                      ),
                    )
                  : CircleAvatar(
                      radius: 80.0,
                      backgroundImage: FileImage(File(imageSelectione!.path)),
                    ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'Hena Ndombele',
              style: TextStyle(
                  height: 1.5,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  color: ColorPages.COLOR_DORE_FONCE,
                  fontFamily: 'Schyler'),
            ),
          ),
          Container(
            child: Text(
              'Henandombele2021@gmail.com',
              style: TextStyle(
                height: 1.5,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                color: ColorPages.COLOR_BLANC,
                fontFamily: 'Schyler',
              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Utils.COLOR_BLEU_CIEL,
                    ),
                    child: ListTile(
                        title: Text(
                          'Editer Profile',
                          style: TextStyle(
                              fontSize: 14, color: ColorPages.COLOR_BLANC),
                        ),
                        leading: Icon(
                          Icons.person,
                          color: ColorPages.COLOR_BLANC,
                          size: 35,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorPages.COLOR_BLANC,
                          size: 20,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.EditerProfilPage);
                        }),
                  ),
                  Divider(
                    height: 15,
                    color: ColorPages.COLOR_GRIS,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Utils.COLOR_BLEU_CIEL,
                    ),
                    child: ListTile(
                        title: Text(
                          'Changer le mot de passe',
                          style: TextStyle(
                              fontSize: 14, color: ColorPages.COLOR_BLANC),
                        ),
                        leading: Icon(
                          Icons.password,
                          color: ColorPages.COLOR_BLANC,
                          size: 35,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorPages.COLOR_BLANC,
                          size: 20,
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.ChangerMotDePassePage);
                        }),
                  ),
                  Divider(
                    height: 15,
                    color: ColorPages.COLOR_GRIS,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Utils.COLOR_BLEU_CIEL,
                    ),
                    child: ListTile(
                        title: Text(
                          'A propos',
                          style: TextStyle(
                              fontSize: 14, color: ColorPages.COLOR_BLANC),
                        ),
                        leading: Icon(
                          Icons.info,
                          color: ColorPages.COLOR_BLANC,
                          size: 35,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorPages.COLOR_BLANC,
                          size: 20,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.AproposPage);
                        }),
                  ),
                  Divider(
                    height: 15,
                    color: ColorPages.COLOR_GRIS,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Utils.COLOR_BLEU_CIEL,
                    ),
                    child: ListTile(
                        title: Text(
                          'FeedBack',
                          style: TextStyle(
                              fontSize: 14, color: ColorPages.COLOR_BLANC),
                        ),
                        leading: Icon(
                          Icons.bookmark,
                          color: ColorPages.COLOR_BLANC,
                          size: 35,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorPages.COLOR_BLANC,
                          size: 20,
                        ),
                        onTap: () {}),
                  ),
                  Divider(
                    height: 15,
                    color: ColorPages.COLOR_GRIS,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Utils.COLOR_BLEU_CIEL,
                    ),
                    child: ListTile(
                        title: Text(
                          'Deconnexion',
                          style: TextStyle(
                              fontSize: 14, color: ColorPages.COLOR_DORE_FONCE),
                        ),
                        leading: Icon(
                          Icons.login,
                          color: ColorPages.COLOR_DORE_FONCE,
                          size: 35,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorPages.COLOR_DORE_FONCE,
                          size: 20,
                        ),
                        onTap: () {}),
                  ),
                ]),
          ),
        ],

    );
  }

  getApplicationDocumentsDirectory() {}
}
