import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/backups/signup.dart';
import 'package:rexora1/screens/sign_up.dart';
import 'package:rexora1/utils/colors.dart' as colors;

import '../utils/pageroute.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      body: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //         colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/sign_in.png",
                    fit: BoxFit.fill,
                  )),
              Expanded(
                  flex: 2,
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                        child: TextFormField(
                          style: GoogleFonts.montserrat(color: Colors.white),
                          decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textBoxColor,
                            hintText: "Enter your phone number",
                            hintStyle: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.7),
                              
),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.0),

                            )
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: TextFormField(
                          style: GoogleFonts.montserrat(color: Colors.white),
                          decoration: InputDecoration(

                              filled: true,
                              fillColor: colors.textBoxColor,
                              hintText: "Enter your password",
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white.withOpacity(0.7),

                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5.0),

                              )
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(

                            icon: Icon(Icons.facebook, size: 24,color: colors.buttonText,),
                            label: Text("Facebook", style: GoogleFonts.montserrat(
                                color: colors.buttonText,
                                fontSize: 16

                            ),),
                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                padding: EdgeInsets.all( 10.0),
                                primary: colors.buttonColor,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)
                                )
                            ),

                          ),

                          ElevatedButton.icon(

                            icon: Icon(Icons.mail_outline, size: 24,color: colors.buttonText,),
                            label: Text("Google", style: GoogleFonts.montserrat(
                                color: colors.buttonText,
                                fontSize: 16

                            ),),
                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                padding: EdgeInsets.all( 10.0),
                                primary: colors.buttonColor,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)
                                )
                            ),

                          ),
                        ],
                      ),),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: ElevatedButton.icon(

                    icon: Icon(Icons.login, size: 24,color: colors.buttonText,),
                    label: Text("Sign in", style: GoogleFonts.montserrat(
                        color: colors.buttonText,
                        fontSize: 16

                    ),),
                    onPressed: (){},

                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        padding: EdgeInsets.all( 10.0),
                        primary: colors.buttonColor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        )
                    ),

                  ),
                ),


                    ],
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: TextButton(

                  onPressed: (){
                    Navigator.of(context).push(
                        CustomPageRoute (
                            child: signUp())

                    );
                  },
                  child: Text("New Here? Sign up ", style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.white,

                  ),),
                ),
              )
            ],
          )),
    );
  }
}
