

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/otp.dart';
import 'package:rexora1/screens/signin.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:rexora1/utils/colors.dart' as colors;

import '../utils/pageroute.dart';
class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override

  Widget build(BuildContext context) {
    Column phone_slide(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                style: GoogleFonts.montserrat(color: Colors.white),
                decoration: InputDecoration(

                    filled: true,
                    fillColor: colors.textBoxColor,
                    hintText: "Phone number",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5.0),

                    )
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                style: GoogleFonts.montserrat(color: Colors.white),
                decoration: InputDecoration(

                    filled: true,
                    fillColor: colors.textBoxColor,
                    hintText: "Password",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5.0),

                    )
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 20),
            child: SizedBox(
              height: 54,
              width: 314,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.navigation_sharp,
                  size: 24,
                  color: colors.buttonText,
                ),
                label: Text(
                  "Request for OTP",
                  style: GoogleFonts.montserrat(
                      color: colors.buttonText, fontSize: 18),
                ),
                onPressed: () {

                  Navigator.of(context).push(
                      CustomPageRoute (
                          child: OTP(password: '1234',phoneNumber: '1234567890',))

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
          Padding(padding: EdgeInsets.all(8.0),

            child: Text(
              "OR",
              style: GoogleFonts.montserrat(
                  color: colors.buttonText, fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: SizedBox(
              height: 54,
              width: 314,
              child: SignInButton(
                Buttons.Google,
                elevation: 10,

                padding: EdgeInsets.all(10.0),

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                text: "Sign up with Google",
                onPressed: () {},
              )
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

      );
    }

    Column fb_slide(){
      return Column(
        children: [
          Expanded(child: Image.asset('assets/fb_sign.png')),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 20),
            child: SizedBox(
              height: 54,
              width: 314,
              child:  SignInButton(
                Buttons.FacebookNew,
                elevation: 10,

                padding: EdgeInsets.all(10.0),

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                text: "Sign up with Facebook",
                onPressed: () {},
              )
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),

            child: Text(
              "OR",
              style: GoogleFonts.montserrat(
                  color: colors.buttonText, fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: SizedBox(
              height: 54,
              width: 314,
              child: SignInButton(
                Buttons.Google,
                elevation: 10,

                padding: EdgeInsets.all(10.0),

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                text: "Sign up with Google",
                onPressed: () {},
              )
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
      );
    }

    return  DefaultTabController(
      length: 2,
      child: Scaffold(appBar: AppBar(
backgroundColor: colors.background,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Align (
                    alignment: Alignment.topLeft,
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.poppins(
                        fontSize: 48,
                        color: colors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Align (
                    alignment: Alignment.topLeft,
                    child: Text(
                      "START YOUR JOURNEY OF LOVE NOW!",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: colors.textColor,

                      ),
                    ),
                  ),
                ),
                TabBar(
                  indicatorColor: colors.buttonColor,
                  indicatorWeight: 10,
                  tabs: [
                    Tab(child: Text("Phone", style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: colors.textColor
                    ),),

                    ),
                    Tab(child: Text("Facebook", style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: colors.textColor
                    ),),),

                  ],
                ),
              ],
            ),
          ),
        ),

        automaticallyImplyLeading: false,
        elevation: 0,
      ),
        backgroundColor: colors.background,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colors.gradientStart,
                    colors.gradientEnd,
                  ]
              )
          ),
          child: TabBarView(
            children: [

            phone_slide(),
              fb_slide()

            ],

          ),
        ),
      ),
    );
  }
}
