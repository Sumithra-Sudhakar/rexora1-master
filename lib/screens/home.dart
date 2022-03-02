import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/utils/google_sign_in.dart';
//import 'package:google_signin_example/widget/background_painter.dart';
import 'package:rexora1/screens/signin.dart';
import 'package:rexora1/screens/signup.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SignUp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(


        children: [
          Center(child: Image.network('https://monophy.com/media/Aggwhu4z4oDG66Uwgz/monophy.gif')),
          Center(child: Text("Aye Date!", style: GoogleFonts.poppins(
            fontWeight: FontWeight.w200,
            fontSize: 30,

          ),),)




        ],

      ),
    );
  }
}

