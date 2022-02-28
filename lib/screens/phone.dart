import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/otp.dart';

import 'birthday.dart';

enum MobileVerificationState { SHOW_NUMBER, SHOW_OTP }

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  MobileVerificationState currentState = MobileVerificationState.SHOW_NUMBER;
  final phoneController = TextEditingController();
  final OTPController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;
  bool showloading = false;
  Widget getPhone(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text("Phone number pls..",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Image.asset("assets/phone.png"),
          )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 40, 15, 15),
              child: ListView(children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  style: GoogleFonts.montserrat(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff424894),
                      hintText: "Enter your phone number",
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff171B72), fontSize: 16),
                    ),
                    onPressed: () async {
                      setState(() {
                        showloading = true;
                      });
                      await _auth.verifyPhoneNumber(
                          phoneNumber: phoneController.text,
                          verificationCompleted: (phoneAuthCredential) async {
                            print("verifiying object");
                            setState(() {
                              showloading = false;
                            });
                            //signInWithPhoneAuthCredential(phoneAuthCredential);
                          },
                          verificationFailed: (verificationFailed) async {
                           print(phoneController.text);
                            setState(() {
                              showloading = false;
                            });
                            _scaffoldKey.currentState?.showSnackBar(SnackBar(
                                content: Text("oops! cannot be verified")));
                          },
                          codeSent: (verificationId, resendingToken) async {
                            setState(() {
                              showloading = false;
                              currentState = MobileVerificationState.SHOW_OTP;
                              this.verificationId = verificationId;
                            });
                          },
                          codeAutoRetrievalTimeout: (verificationId) async {});
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 2,
                        padding: EdgeInsets.all(10.0),
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0))),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  getOTP(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
                controller: OTPController,
                style: GoogleFonts.montserrat(color: Colors.white),
                decoration: InputDecoration(
                  label: Text(
                    'OTP',
                    style:
                        GoogleFonts.raleway(color: Colors.white, fontSize: 12),
                  ),
                  filled: true,
                  hintText: 'Please enter your OTP',
                  hintStyle:
                      GoogleFonts.poppins(color: Colors.grey.withOpacity(0.7)),
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
              onPressed: () {},
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
              onPressed: () async {
                PhoneAuthCredential phoneAuthCredential =
                    PhoneAuthProvider.credential(
                        verificationId: verificationId,
                        smsCode: OTPController.text);
                signInWithPhoneAuthCredential(phoneAuthCredential);
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
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4A5BB6),
        ),
        body: Container(
          child: showloading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : currentState == MobileVerificationState.SHOW_NUMBER
                  ? getPhone(context)
                  : getOTP(context),
        ));
  }

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showloading = true;
    });
    try {
      final UserCredential authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showloading = false;
      });
      if (authCredential.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Birthday()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showloading = false;
      });
      _scaffoldKey.currentState
          ?.showSnackBar(SnackBar(content: Text("execption caught sorry ")));
    }
  }
}
