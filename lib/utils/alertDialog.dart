import 'package:flutter/material.dart';

import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

displayDialog(context, positiveText, negativeText, Function positiveFunction,
    title, subTitle) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: colors.textColor,
      title: Text(
        title,
        style: GoogleFonts.poppins(color: colors.textColor2, fontWeight: FontWeight.bold),
      ),
      content: Text(
        subTitle,
        style: GoogleFonts.poppins(color: colors.textColor2),
      ),
      actions: <Widget>[
        negativeText != null
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.red
          ),

          child: Text(
            negativeText,
            style: GoogleFonts.poppins(color: colors.textColor2, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
            : Container(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green
          ),
          child: Text(positiveText,
              style: TextStyle(color: colors.textColor2, fontWeight: FontWeight.bold)),
          onPressed: () async {
            positiveFunction();
          },
        ),
      ],
    ),
  );
}
