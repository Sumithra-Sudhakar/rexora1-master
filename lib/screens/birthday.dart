import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Gender.dart';

class Birthday extends StatefulWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  DateTime selectedDate = DateTime.now();
  @override
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:    Color(0xFF4A5BB6),
      ),
        body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
        Color(0xFF4A5BB6),
    Color(0xFF18246D)
    ]
    )
    ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [
            Expanded(flex: 1
                ,child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/birthday.png", width: 400,
                   ),
                )),
           Expanded(
               flex: 2,
               child: ListView(
             children: [
               Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                 child: Align(
                   alignment: Alignment.center,
                   child: Text("When were you born?",
                     style:  GoogleFonts.montserrat(color: Colors.white,
                         fontSize: 25,
                         fontWeight: FontWeight.w400
                     ),),
                 ),),

               Align(
                 alignment: Alignment.center,
                 child: Text(
                   "${selectedDate.toLocal()}".split(' ')[0],
                   style:   GoogleFonts.montserrat(color: Colors.white,
                     fontSize: 30,
                     fontWeight: FontWeight.bold
                 )
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.fromLTRB(18, 70, 18, 18),
                 child: RaisedButton(
                   onPressed: () => _selectDate(context), // Refer step 3
                   child: Text(
                     'Select date',
                     style:
                     TextStyle(color: Color(0xFF18246D), fontWeight: FontWeight.bold),
                   ),
                   color: Colors.white,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: RaisedButton(
                   onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const Gender()));
    },


  //Refer step 3
                   child: Text(
                     'Continue',
                     style:
                     TextStyle(color: Color(0xFF18246D), fontWeight: FontWeight.bold),
                   ),
                   color: Colors.white,
                 ),
               ),
             ],
           ))
          ],
        ),)
    );
  }
}
