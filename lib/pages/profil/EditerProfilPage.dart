import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/widgets/ChampSaisieWidget.dart';
import 'package:salon_app_ui/widgets/BoutonWidget.dart';

class EditerProfilPage extends StatefulWidget {
  const EditerProfilPage({super.key});

  @override
  State<EditerProfilPage> createState() => _EditerProfilPageState();
}

class _EditerProfilPageState extends State<EditerProfilPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _utilisateur = TextEditingController();
  TextEditingController _telephone = TextEditingController();

  final ImagePicker picker = ImagePicker();
  XFile? imageSelectione;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      body: Stack(
        children: [_body()],
      ),
    );
  }

  Widget _body() {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        _entete(),
        _champ(),
        _bouton_edit()
      ],
    );
  }

  Widget _entete() {
    return Container(
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
    );
  }

  Widget _champ() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          ChampSaisieWidget(
            hintext: "nom d'utilisateur",
            label: "nom d'utilisateur",
            prefixIcon: Icons.person,
            ctrl: _email,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },
          ),
          SizedBox(height: 20,),
          ChampSaisieWidget(
            hintext: "email",
            label: "email",
            ctrl: _email,
            prefixIcon: Icons.email,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },
          ),
          SizedBox(height: 20,),

          ChampSaisieWidget(
            hintext: "télephone",
            label: "téléphone",
            ctrl: _email,
            prefixIcon: Icons.phone,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _bouton_edit(){
    return Container(
      child: BoutonWidget(onPressed: (){},text: "Editer le profile",),
    );
  }
}
