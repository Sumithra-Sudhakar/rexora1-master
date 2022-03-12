import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:rexora1/screens/profileEdit.dart';
import 'package:rexora1/utils/colors.dart' as colors;

import '../utils/pageroute.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.textColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Center(
              child: Text("Profile",
                style: GoogleFonts.poppins(
                    color: colors.textColor2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Spacer(),
            IconButton(onPressed: (){

              Navigator.of(context).push(
                  CustomPageRoute (




                      child: EditProfile())

              );
            }, icon: Icon(Icons.edit), iconSize: 24,color: colors.textColor2,)
          ],
        ),
      ),
      body: SingleChildScrollView(
child:Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Stack(
      children: [
        Image.asset('assets/profile.png', fit: BoxFit.fill,),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 250, 8, 8),
                      child: Card(
elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Pooja Sharma", style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),),
                        ),
                      ),
                    ),
        ),
      ],
    ),

        Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("About",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: colors.textColor2,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Card(
                    elevation: 10,

                    child: Padding(
                      padding: const EdgeInsets.all(12.0),

                      child: Text("Lorem ipsum dolor sit amet,in sollicitudin justo pulvinar. Sed nunc erat, dapibus  ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: colors.textColor2,
                            fontWeight: FontWeight.w500

                        ),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Hobbies",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: colors.textColor2,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper justo sed purus pulvinar, in sollicitudin justo pulvinar. Sed nunc erat, dapibus  ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: colors.textColor2,
                          fontWeight: FontWeight.w500

                        ),
                      ),
                    ),
                  ),
                ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Other details",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: colors.textColor2,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
        ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        hoverColor: colors.gradientStart.withOpacity(0.7),

        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(3)
        ),

        leading: Icon(Icons.phone, size: 18,),
        title:  Text("Phone Number", style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400

        ),),
        subtitle:                        Text("1234567890", style: GoogleFonts.poppins(
                            fontSize: 14,
                              fontWeight: FontWeight.w600

                          ),),

      ),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        hoverColor: colors.gradientStart.withOpacity(0.7),

        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(3)
        ),

        leading: Icon(Icons.location_on, size: 18,),
        title:  Text("Location", style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400

        ),),
        subtitle:                        Text("Chennai, India", style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600

        ),),

      ),
    ),


    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        hoverColor: colors.gradientStart.withOpacity(0.7),

        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(3)
        ),

        leading: Icon(Icons.wallet_giftcard_rounded, size: 18,),
        title:  Text("Gifts", style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400

        ),),
        subtitle:                        Text("Accpets Physical Gifts", style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600

        ),),

      ),
    ),
  ],
)
      ),
    );
  }
}





//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
//                     child: Row(
//                       children: [
//                         Icon(Icons.wallet_giftcard_sharp, size: 18,),
//                         Text("  Gifts", style: GoogleFonts.poppins(
//                           fontSize: 14,
//                             fontWeight: FontWeight.w600
//
//                         ),),
//                         Spacer(),
//                         Text("Accepts physical gifts", style: GoogleFonts.poppins(
//                           fontSize: 14,
//                             fontWeight: FontWeight.w600
//
//                         ),),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//
//
//
//           ],
//         ),