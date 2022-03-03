import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/hurray.dart';
import 'package:rexora1/screens/signup.dart';
import 'package:rexora1/utils/colors.dart' as colors;
 class Terms extends StatefulWidget {
   const Terms({Key? key}) : super(key: key);

   @override
   _TermsState createState() => _TermsState();
 }

 class _TermsState extends State<Terms> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor:  colors.background,
         elevation: 0,

       ),
       backgroundColor: colors.background,
     body: Container(
     //   decoration: BoxDecoration(
     // gradient: LinearGradient(
     // begin: Alignment.topLeft,
     // end: Alignment.bottomRight,
     // colors: [
     // Color(0xFF4A5BB6),
     // Color(0xFF18246D)
     // ]
     // )
     // ),
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,


         children: [
           Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
             child: Align(
               alignment: Alignment.topLeft,
               child: Text("Almost there...",
                 style:  GoogleFonts.montserrat(color: Colors.white,

                     fontSize: 20,
                     fontWeight: FontWeight.w200
                 ),),
             ),),

           Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
             child: Align(
               alignment: Alignment.topCenter,
               child: Text("Terms and condition",
                 style:  GoogleFonts.montserrat(color: Colors.white,

                     fontSize: 15,
                     fontWeight: FontWeight.w400
                 ),),
             ),),

           Padding(padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
             child: Align(
               alignment: Alignment.topCenter,
               child: Text("A Terms and Conditions agreement acts as legal contracts between you (the company) who has the website or mobile app, and the user who your app, where you maintain your legal rights against potential app abusers, and so on.Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable, practically speaking.",
                 style:  GoogleFonts.montserrat(color: Colors.white,

                     fontSize: 15,
                     fontWeight: FontWeight.w400
                 ),),
             ),),

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           ElevatedButton.icon(

             icon: Icon(Icons.thumb_up_alt_sharp, size: 24,color: colors.buttonText,),
             label: Text("Agree", style: GoogleFonts.montserrat(
                 color: colors.buttonText,
                 fontSize: 16

             ),),
             onPressed: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const Hurray()));
             },

             style: ElevatedButton.styleFrom(
                 elevation: 2,
                 padding: EdgeInsets.all( 10.0),
                 primary: colors.buttonColor,
                 shape: new RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(2.0)
                 )
             ),

           ),

           ElevatedButton.icon(

             icon: Icon(Icons.thumb_down_alt_sharp, size: 24,color: colors.buttonText,),
             label: Text("Disgree", style: GoogleFonts.montserrat(
                 color: colors.buttonText,
                 fontSize: 16

             ),),
             onPressed: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const SignUp()));
             },

             style: ElevatedButton.styleFrom(
                 elevation: 2,
                 padding: EdgeInsets.all( 10.0),
                 primary: colors.buttonColor,
                 shape: new RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(2.0)
                 )
             ),

           ),
         ],
       ),
         ],
       ),
       ),
     );
   }
 }
