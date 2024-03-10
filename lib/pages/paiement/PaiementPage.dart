import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';

class PaiementPage extends StatefulWidget {
  const PaiementPage({super.key});

  @override
  State<PaiementPage> createState() => _PaiementPageState();
}

class _PaiementPageState extends State<PaiementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPages.COLOR_NOIR,
        title: Text(
          "Détails du paiement",
          style: TextStyle(
              color: ColorPages.COLOR_DORE_FONCE, fontWeight: FontWeight.bold),
        ),
      ),

      body: Stack(
        children: [_body()],
      ),
    );
  }

  Widget _body(){
    return Column(
      children: [_detail(),_text_paiement()],
    );
  }

  Widget _detail(){
    return Container(

      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              Text("Nom : ", style: TextStyle(color: ColorPages.COLOR_BLANC),),
              Text("Hena Ndombele",style: TextStyle(color: ColorPages.COLOR_BLANC)),

            ],
          ),
          SizedBox(height: 10,),
          Divider(height:2,color: ColorPages.COLOR_DORE_FONCE,),
          Row(
            children: [
              Text("Date : ",style: TextStyle(color: ColorPages.COLOR_BLANC)),
              Text("02/02/2024",style: TextStyle(color: ColorPages.COLOR_BLANC)),
            ],
          ),
          SizedBox(height: 10,),
          Divider(height:2,color: ColorPages.COLOR_DORE_FONCE,),
          Row(
            children: [
              Text("Prix : ",style: TextStyle(color: ColorPages.COLOR_BLANC)),
              Text("10",style: TextStyle(color: ColorPages.COLOR_BLANC)),
            ],
          ),
          SizedBox(height: 10,),
          Divider(height:2,color: ColorPages.COLOR_DORE_FONCE,),
          Row(
            children: [
              Text("Service : ",style: TextStyle(color: ColorPages.COLOR_BLANC)),
              Text("Cheveux",style: TextStyle(color: ColorPages.COLOR_BLANC)),
            ],
          ),
          SizedBox(height: 10,),
          Divider(height:2,color: ColorPages.COLOR_DORE_FONCE,),
        ],
      ),
    );
  }

  Widget _text_paiement(){
    return Container(
      child: Text("Selectionner un moyen de paiement",style: TextStyle(color:ColorPages.COLOR_BLANC,fontWeight: FontWeight.bold),),
    );
  }
}
