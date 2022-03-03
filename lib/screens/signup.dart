import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rexora1/screens/no_internet.dart';
import 'package:rexora1/screens/phone.dart';
import 'package:rexora1/screens/sign_up.dart';
import 'package:rexora1/screens/signin.dart';
import 'package:rexora1/utils/google_signup_button_widget.dart';
import 'package:rexora1/utils/colors.dart' as colors;

import '../utils/pageroute.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:colors.background ,
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
                  "assets/sign_up.png",
                  fit: BoxFit.fill,
                )),
            Expanded(
                flex: 2,
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Aye Date!",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Meet | Mingle | Match ",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 40, 30, 20),
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.phone,
                          size: 24,
                          color: colors.buttonText,
                        ),
                        label: Text(
                          "Sign Up with phone",
                          style: GoogleFonts.montserrat(
                              color: colors.buttonText, fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomPageRoute (
                              child: Phone())

                          );
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 10,

                            padding: EdgeInsets.all(10.0),
                            primary: colors.buttonColor,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(seconds: 2),

                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.facebook,
                            size: 24,
                            color: colors.buttonText,
                          ),
                          label: Text(
                            "Sign Up with Facebook",
                            style: GoogleFonts.montserrat(
                                color: colors.buttonText, fontSize: 16),
                          ),
                          onPressed: () {

                            Navigator.of(context).push(
                                CustomPageRoute (
                                    child: Internet())

                            );
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 10,
                              padding: EdgeInsets.all(10.0),
                              primary: colors.buttonColor,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        ),
                      ),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    //     child: GoogleSignupButtonWidget(
                    //
                    //     )),


                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.mail,
                          size: 24,
                          color: colors.buttonText,
                        ),
                        label: Text(
                          "Sign Up with Google",
                          style: GoogleFonts.montserrat(
                              color: colors.buttonText, fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              CustomPageRoute (
                                  child: signUp())

                          );
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 10,

                            padding: EdgeInsets.all(10.0),
                            primary: colors.buttonColor,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              CustomPageRoute (
                                  child: SignIn())

                          );
                        },
                        child: Text(
                          "Already have an account? Sign in ",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

