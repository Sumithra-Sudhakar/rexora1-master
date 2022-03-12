import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:rexora1/screens/main_page.dart';
import 'package:rexora1/utils/alertDialog.dart';
import 'package:rexora1/utils/colors.dart' as colors;

import '../utils/pageroute.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}
enum options {Yes,  No}
class _EditProfileState extends State<EditProfile> {
  options _opt = options.Yes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here


        ),
        backgroundColor: colors.textColor,
        title: Text("Edit Profile",
          style: GoogleFonts.poppins(
              color: colors.textColor2,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),


        ),
          actions: [
          IconButton(onPressed: (){
            displayDialog(context, "Yes", "No", (){  Navigator.of(context).push(
    CustomPageRoute (




    child: MainPage())

    );
    }, "Exit", "Are you sure you want to exit?");
          }, icon: Icon(
      Icons.close,
      color: colors.textColor2,
      size: 20,))],
        automaticallyImplyLeading: false,
    ),

body: SingleChildScrollView
  (
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(

          children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: SizedBox(
           width: MediaQuery.of(context).size.width*0.5,
           height: MediaQuery.of(context).size.width*0.45,
           child:      Image.asset('assets/profile.png', fit: BoxFit.fill,),
         ),
       ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.4,
              child: ElevatedButton.icon(
              icon: Icon(
              Icons.photo_camera,
                size: 24,
                color: colors.buttonText,
              ),
      label: Text(
        "Change Photo",
        style: GoogleFonts.montserrat(
              color: colors.buttonText, fontSize: 12),
      ),
      onPressed: () {





      },
      style: ElevatedButton.styleFrom(
          elevation: 10,

          padding: EdgeInsets.all(10.0),
          primary: colors.buttonColor,
          shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0))),
    ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
            prefixIcon: Icon(Icons.info_outline),
            prefixIconColor: colors.textColor2,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colors.textColor2,
                ),),
            suffixIcon: Icon(Icons.edit, color: colors.textColor2,),
            suffixIconColor: colors.textColor2,
            contentPadding: EdgeInsets.all(8),
            labelText: "About",
            labelStyle: GoogleFonts.poppins(
              fontSize: 14,
              color: colors.textColor2,
            ),
            hintText: "Lorem ipsum dolor sit amet,in sollicitudin justo pulvinar. Sed nunc",
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              color: colors.textColor2.withOpacity(0.8),
            ),
            focusColor: colors.textColor2,
            iconColor: colors.textColor2
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(

          decoration: InputDecoration(
              filled: true,
              prefixIconColor: colors.textColor2,
              prefixIcon: Icon(Icons.motorcycle),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colors.textColor2,
                ),),
              suffixIcon: Icon(Icons.edit, color: colors.textColor2,),
              suffixIconColor: colors.textColor2,
              contentPadding: EdgeInsets.all(8),
              labelText: "Hobbies",
              labelStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: colors.textColor2,
              ),
              hintText: "Lorem ipsum dolor sit amet,in sollicitudin justo pulvinar. Sed nunc",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: colors.textColor2.withOpacity(0.8),
              ),
              focusColor: colors.textColor2,
              iconColor: colors.textColor2
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(

          decoration: InputDecoration(
              filled: true,
              prefixIconColor: colors.textColor2,
              prefixIcon: Icon(Icons.phone),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colors.textColor2,
                ),),
              suffixIcon: Icon(Icons.edit, color: colors.textColor2,),
              suffixIconColor: colors.textColor2,
              contentPadding: EdgeInsets.all(8),
              labelText: "Phone Number",
              labelStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: colors.textColor2,
              ),
              hintText: "1234567890",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: colors.textColor2.withOpacity(0.8),
              ),
              focusColor: colors.textColor2,
              iconColor: colors.textColor2
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.location_on),
              prefixIconColor: colors.textColor2,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colors.textColor2,
                ),),
              suffixIcon: Icon(Icons.edit, color: colors.textColor2,),
              suffixIconColor: colors.textColor2,
              contentPadding: EdgeInsets.all(8),
              labelText: "Current Location",
              labelStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: colors.textColor2,
              ),
              hintText: "Chennai, India",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: colors.textColor2.withOpacity(0.8),
              ),
              focusColor: colors.textColor2,
              iconColor: colors.textColor2
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Gifts", style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: colors.textColor2
            ),),
          ),
        ),
      ),
      ListTile(
        title:  Text('Accepts physical gifts',style: GoogleFonts.poppins(
            color: colors.textColor2,
            fontSize: 14
        ),),
        leading: Radio(
          activeColor: colors.textColor2,
          value: options.Yes,
          groupValue: _opt,
          onChanged: (option){
            setState(() {
              _opt = options.Yes;
            });
          },
        ),
      ),
      ListTile(
        title:  Text('Accepts only virtual gifts', style: GoogleFonts.poppins(
            color: colors.textColor2,
            fontSize: 14
        ),),
        leading: Radio(
          activeColor: colors.textColor2,

          value: options.No,
          groupValue: _opt,
          onChanged: (option){
            setState(() {
              _opt = options.No;
            });
          },

        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.07,
          width: MediaQuery.of(context).size.width*0.4,
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.save,
              size: 18,
              color: colors.buttonText,
            ),
            label: Text(
              "Save Changes",
              style: GoogleFonts.montserrat(
                  color: colors.buttonText, fontSize: 12),
            ),
            onPressed: () {

displayDialog(context, "Yes", "No", (){
  final snackBar = SnackBar(
    content: const Text('Your changes have been updated!'));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}, "Save Changes", "Are you sure you want to save the changes?");



            },
            style: ElevatedButton.styleFrom(
                elevation: 10,

                padding: EdgeInsets.all(10.0),
                primary: colors.buttonColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
          ),
        ),
      )
    ],
  ),
),
    );
  }
}
