import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:rexora1/screens/birthday.dart';
import 'package:rexora1/screens/signin.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4A5BB6),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // OtpTextField(
            //
            //
            //   numberOfFields: 5,
            //
            //   borderColor: Color(0xFF512DA8),
            //   //set to true to show as box or false to show as dash
            //   showFieldAsBox: true,
            //   //runs when a code is typed in
            //   onCodeChanged: (String code) {
            //     //handle validation or checks here
            //   },
            //   //runs when every textfield is filled
            //   onSubmit: (String verificationCode){
            //
            //
            //   },
            //
            //   // end onSubmit
            // ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                  controller: _otpController,
                  style: GoogleFonts.montserrat(color: Colors.white),
                  decoration: InputDecoration(
                    label: Text(
                      'OTP',
                      style: GoogleFonts.raleway(
                          color: Colors.white, fontSize: 12),
                    ),
                    filled: true,
                    hintText: 'Please enter your OTP',
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.grey.withOpacity(0.7)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)),
                    fillColor: Color(0xff424894),
                    //  focusColor: colors.textBoxFill,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Text(
                  "Resend OTP ",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                child: Text(
                  "Continue",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff171B72), fontSize: 16),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      CustomPageRoute (
                          child: Birthday())

                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    padding: EdgeInsets.all(10.0),
                    primary: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0))),
              ),
            ),
            //
            // Padding(
            //   padding: const EdgeInsets.all(30.0),
            //   child: ElevatedButton(
            //
            //
            //     child: Text("Generate", style: GoogleFonts.montserrat(
            //         color: Color(0xff171B72),
            //         fontSize: 16
            //
            //     ),),
            //     onPressed: () {
            //       print(widget.phoneNumber);
            //       _generateOTP();
            //     },
            //     style: ElevatedButton.styleFrom(
            //         elevation: 2,
            //         padding: EdgeInsets.all( 10.0),
            //         primary: Colors.white,
            //         shape: new RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(2.0)
            //         )
            //     ),
            //
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
