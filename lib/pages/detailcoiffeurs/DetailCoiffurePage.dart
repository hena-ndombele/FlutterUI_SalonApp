import 'package:flutter/material.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';
import 'package:salon_app_ui/utils/Routes.dart';
import 'package:salon_app_ui/widgets/BoutonWidget.dart';

class DetailCoiffurePage extends StatefulWidget {
  const DetailCoiffurePage({Key? key}) : super(key: key);

  @override
  State<DetailCoiffurePage> createState() => _DetailCoiffurePageState();
}

class _DetailCoiffurePageState extends State<DetailCoiffurePage> {
  late DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPages.COLOR_NOIR,
        title: Text(
          "Details",
          style: TextStyle(
              color: ColorPages.COLOR_DORE_FONCE, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [_body()],
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _details(),
            SizedBox(height: 30,),
            _text(),
            _select_date(),
            _select_heure(),
            _message(),
            _bouton()
          ],
        ),
      ),
    );
  }

  Widget _details() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Nom : ',
              style: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
            ),
            Text("Hena Ndombele",
                style: TextStyle(color: ColorPages.COLOR_BLANC))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 2,
        ),
        Row(
          children: [
            Text(
              'Experience : ',
              style: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
            ),
            Text("2 ans", style: TextStyle(color: ColorPages.COLOR_BLANC))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 2,
        ),
        Row(
          children: [
            Text(
              'Téléphone : ',
              style: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
            ),
            Text("0830376004",
                style: TextStyle(color: ColorPages.COLOR_BLANC)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 2,
        ),
      ],
    );
  }

  Widget _select_date() {
    return GestureDetector(
      onTap: () {
        _selectDate(context);
      },
      child: AbsorbPointer(
        child: TextFormField(
          style: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
          decoration: InputDecoration(
            labelText: 'Date',labelStyle: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
            suffixIcon: Icon(Icons.calendar_today,color: ColorPages.COLOR_DORE_FONCE,),
          ),
          controller: TextEditingController(
            text: selectedDate != null
                ? '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
                : '',
          ),
        ),
      ),
    );
  }

  Widget _text(){
    return Container(
      child:Text('Selectionner une date',style: TextStyle(color: ColorPages.COLOR_BLANC,fontWeight: FontWeight.bold),) ,
    );
  }

  Widget _select_heure() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 130,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){},
                    child: Text("10:00-11:00",
                      style: TextStyle(color: ColorPages.COLOR_BLANC),), style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: ColorPages.COLOR_DORE_FONCE,
                        side: BorderSide(color: ColorPages.COLOR_DORE_FONCE),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),)

                ],
              ),
            ),
            Container(
              width: 130,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){},
                    child: Text("08:00-09:00",
                      style: TextStyle(color: ColorPages.COLOR_BLANC),), style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: ColorPages.COLOR_DORE_FONCE,
                        side: BorderSide(color: ColorPages.COLOR_DORE_FONCE),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),)

                ],
              ),
            ),
          ],
        ),  Row(
          children: [
            Container(
              width: 130,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Text("13:00-14:00",
                        style: TextStyle(color: ColorPages.COLOR_BLANC),), style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: ColorPages.COLOR_DORE_FONCE,
                        side: BorderSide(color: ColorPages.COLOR_DORE_FONCE),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),)

                ],
              ),
            ),
            Container(
              width: 130,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){},
                    child: Text("15:00-16:00",
                      style: TextStyle(color: ColorPages.COLOR_BLANC),), style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: ColorPages.COLOR_DORE_FONCE,
                        side: BorderSide(color: ColorPages.COLOR_DORE_FONCE),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),)

                ],
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget _message() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        style: TextStyle(
          color: ColorPages
              .COLOR_DORE_FONCE, // Couleur du texte lorsqu'on saisit
        ),
        maxLength: 6,
        decoration: InputDecoration(

          fillColor: ColorPages.COLOR_NOIR.withOpacity(.55),
          hintText: "Message",
          hintStyle: TextStyle(color: ColorPages.COLOR_DORE_FONCE),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: ColorPages.COLOR_DORE_FONCE),
          ),
          border: OutlineInputBorder(

            borderSide: BorderSide(width: 1, color: ColorPages.COLOR_DORE_FONCE),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _bouton() {
    return Container(
      child: BoutonWidget(
        onPressed: () {
          Navigator.pushNamed(context, Routes.PaiementPage);
        },
        text: "Prendre rendez-vous",
      ),
    );
  }
}