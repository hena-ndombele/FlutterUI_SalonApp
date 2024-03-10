import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';

class CardWidget extends StatefulWidget {
  final String imagePath;
  final String text;
  final String text_coif;
  final String text_annee;
  final String buttonText;
  final VoidCallback onPressed;

  CardWidget(
      {required this.imagePath,
      required this.buttonText,
      required this.text,
      required this.text_coif,
      required this.text_annee,
      required this.onPressed});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      margin: EdgeInsets.all(20),
      color: Colors.grey.withOpacity(.35),
      child: Row(
        children: [
          Image.asset(
            widget.imagePath,
            width: 180,
            height: 150,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(widget.text,style: TextStyle(color: ColorPages.COLOR_BLANC,fontWeight: FontWeight.bold)),
                Text(widget.text_coif,style: TextStyle(color: ColorPages.COLOR_DORE_FONCE,fontWeight: FontWeight.bold),),
                Text(widget.text_annee,style: TextStyle(color: ColorPages.COLOR_BLANC,fontWeight: FontWeight.bold)),
                Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: widget.onPressed as void Function()?,
                    child: Text(
                      widget.buttonText,
                      style: TextStyle(
                          color: ColorPages.COLOR_BLANC,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPages.COLOR_DORE_FONCE,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
