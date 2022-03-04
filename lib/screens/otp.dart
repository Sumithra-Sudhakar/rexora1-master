import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rexora1/screens/birthday.dart';
import 'package:rexora1/screens/sign_up.dart';
import 'package:rexora1/screens/signin.dart';
import 'package:rexora1/utils/colors.dart' as colors;
import '../utils/pageroute.dart';
import 'home.dart';

class OTP extends StatefulWidget {
  const OTP({
    Key? key,
    required this.phoneNumber,
    required this.password,
  }) : super(key: key);
  final String phoneNumber;
  final String password;

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final TextEditingController _otpController = TextEditingController();
  String verificationId = "";
  @override
  // void initState() {
  //   super.initState();
  //   asyncMethod();
  // }
  //
  // void asyncMethod() async {
  //   await _generateOTP();
  //
  // }
  _generateOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${widget.phoneNumber}',
      verificationCompleted: (PhoneAuthCredential credential) {
        print("COMPLETE");
        print("verification completed ${credential.smsCode}");
        User? user = FirebaseAuth.instance.currentUser;

        //print(user.phoneNumber);
        //print(user.getIdToken());
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print("The phone number entered is invalid!");
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        this.verificationId = verificationId;
        print(resendToken);
        print("code sent");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    _generateOTP();
    return  Scaffold(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(child: Center(
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                children: [
                  Center(
                    child: Text("ENTER THE CODE THAT WAS SENT TO", style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: colors.textColor,
                    ),),
                  ),
                  Center(
                    child: Text("1234567890", style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: colors.textColor,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
            ), flex: 2,),
            

            Expanded(child: Center(
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                children: [

                Padding(
                padding: const EdgeInsets.all(8.0),
    child: TextFormField(
    style: GoogleFonts.montserrat(color: Colors.white),
    decoration: InputDecoration(

    filled: true,
    fillColor: colors.textBoxColor,
    hintText: "OTP",
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
    Icons.arrow_forward,
    size: 24,
    color: colors.buttonText,
    ),
    label: Text(
    "CONTINUE",
    style: GoogleFonts.montserrat(
    color: colors.buttonText, fontSize: 18),
    ),
    onPressed: () {

    Navigator.of(context).push(
    CustomPageRoute (
    child: Birthday())

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
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            CustomPageRoute (
                                child: signUp())

                        );
                      },
                      child: Text(
                        "I didn't get a code",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ), flex: 4,)
          ],
        ),
      ),
    );
  }
}
