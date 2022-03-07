import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/utils/colors.dart' as colors;
import '../utils/pageroute.dart';
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
        elevation: 0,
        backgroundColor:   colors.background,
      ),
        backgroundColor: colors.background,
        body: Container(
    //     decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //     begin: Alignment.topLeft,
    //     end: Alignment.bottomRight,
    //     colors: [
    //     Color(0xFF4A5BB6),
    // Color(0xFF18246D)
    // ]
    // )
    // ),
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
                 padding: const EdgeInsets.fromLTRB(30, 70, 30, 10),
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20)
                   ),
                   onPressed: () => _selectDate(context), // Refer step 3
                   child: Text(
                     'Select date',
                     style:
                     GoogleFonts.poppins(color: colors.buttonText, fontWeight: FontWeight.bold,
                     fontSize: 18
                     ),
                   ),
                   color: colors.buttonColor,
                   elevation: 10,
                   padding: EdgeInsets.all(18.0),

                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(30.0),
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                   ),
                   elevation: 10,
                   padding: EdgeInsets.all(18.0),
                   onPressed: () {
                     Navigator.of(context).push(
                         CustomPageRoute (
                             child: Gender())

                     );
    },


  //Refer step 3
                   child: Text(
                     'Continue',
                     style:
                     GoogleFonts.poppins(color: colors.buttonText,
                         fontSize: 18,
                         fontWeight: FontWeight.bold),
                   ),
                   color: colors.buttonColor,
                 ),
               ),
             ],
           ))
          ],
        ),)
    );
  }
}
