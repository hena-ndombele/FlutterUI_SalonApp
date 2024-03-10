import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';

class ChampSaisieWidget extends StatefulWidget {
  bool isPassword;
  String label = "";
  String hintext = "";
  IconData prefixIcon = Icons.edit;
  TextEditingController ctrl;
  TextInputType type = TextInputType.text;
  bool required = false;

  ChampSaisieWidget(
      {this.isPassword = false,
      this.label = "",
      this.hintext = "",
      this.prefixIcon = Icons.edit,
      required this.ctrl,
      this.type = TextInputType.text,
      this.required = false,
      required String? Function(String? value) validator});

  @override
  State<ChampSaisieWidget> createState() => _ChampSaisieWidgetState();
}

class _ChampSaisieWidgetState extends State<ChampSaisieWidget> {
  bool hidePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hidePassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: hidePassword,
        controller: widget.ctrl,
        keyboardType: widget.type,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Champs obligatoire*";
          }
          return null;
        },
        style: TextStyle(
          color:
              ColorPages.COLOR_DORE_FONCE, // Couleur du texte lorsqu'on saisit
        ),
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    hidePassword = !hidePassword;
                    setState(() {});
                  },
                  icon: Icon(
                    hidePassword ? Icons.visibility : Icons.visibility_off,
                    color: ColorPages.COLOR_DORE_FONCE,
                  ))
              : SizedBox(),
          prefixIcon: Icon(
            widget.prefixIcon,
            color: ColorPages.COLOR_GRIS,
          ),
          labelText: widget.label,
          labelStyle: TextStyle(
              color: ColorPages.COLOR_GRIS,
              fontSize: 12,
              fontFamily: "Schyler"),
          hintText: widget.hintext,
          hintStyle: TextStyle(fontFamily: 'Schyler', fontSize: 12),
          border: _bordure(Colors.grey),
          focusedBorder: _bordure(
            ColorPages.COLOR_DORE_CLAIRE,
          ),
          errorBorder: _bordure(
            ColorPages.COLOR_ROUGE,
          ),
          enabledBorder: _bordure(
            ColorPages.COLOR_DORE_CLAIRE,
          ),
          filled: false,
          contentPadding: EdgeInsetsDirectional.fromSTEB(7, 17, 0, 17),
        ));
  }
}

OutlineInputBorder _bordure(Color _color) {
  return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: _color),
      borderRadius: BorderRadius.all(Radius.circular(8)));
}
