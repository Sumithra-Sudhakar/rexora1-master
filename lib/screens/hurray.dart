import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rexora1/utils/colors.dart' as colors;
class Hurray extends StatefulWidget {
  const Hurray({Key? key}) : super(key: key);

  @override
  _HurrayState createState() => _HurrayState();
}

class _HurrayState extends State<Hurray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration:
        BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                 colors.gradientStart,
                  colors.gradientEnd
                ]
            )
        ),
        child: Center(
          child:  Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(padding: EdgeInsets.all(10.0),
                child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_nzxcsfj9.json'),),
              ),
            Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(8.0),
              child:  Text(
                  "Welcome Lovelies!!!",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                )),
            )
            ],
          ),
        ),
      ),
    );
  }
}
