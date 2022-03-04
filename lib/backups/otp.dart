// return Scaffold(
// appBar: AppBar(
// elevation: 0,
// backgroundColor: colors.background,
// ),
// backgroundColor: colors.background,
// body: Container(
// // decoration: BoxDecoration(
// // gradient: LinearGradient(
// //     begin: Alignment.topLeft,
// //     end: Alignment.bottomRight,
// //     colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// // OtpTextField(
// //
// //
// //   numberOfFields: 5,
// //
// //   borderColor: Color(0xFF512DA8),
// //   //set to true to show as box or false to show as dash
// //   showFieldAsBox: true,
// //   //runs when a code is typed in
// //   onCodeChanged: (String code) {
// //     //handle validation or checks here
// //   },
// //   //runs when every textfield is filled
// //   onSubmit: (String verificationCode){
// //
// //
// //   },
// //
// //   // end onSubmit
// // ),
// Padding(
// padding: const EdgeInsets.all(18.0),
// child: TextFormField(
// controller: _otpController,
// style: GoogleFonts.montserrat(color: Colors.white),
// decoration: InputDecoration(
// label: Text(
// 'OTP',
// style: GoogleFonts.raleway(
// color: Colors.white, fontSize: 12),
// ),
// filled: true,
// hintText: 'Please enter your OTP',
// hintStyle: GoogleFonts.poppins(
// color: Colors.grey.withOpacity(0.7)),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide.none,
// borderRadius: BorderRadius.circular(5)),
// fillColor: colors.textBoxColor,
// //  focusColor: colors.textBoxFill,
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide.none,
// borderRadius: BorderRadius.circular(5)),
// )),
// ),
// Padding(
// padding: EdgeInsets.all(20.0),
// child: TextButton(
// onPressed: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (context) => const SignIn()));
// },
// child: Text(
// "Resend OTP ",
// style: GoogleFonts.montserrat(
// fontSize: 16,
// color: Colors.white,
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(30.0),
// child: ElevatedButton(
// child: Text(
// "Continue",
// style: GoogleFonts.montserrat(
// color: colors.buttonText, fontSize: 16),
// ),
// onPressed: () {
// Navigator.of(context).push(
// CustomPageRoute (
// child: Birthday())
//
// );
// },
// style: ElevatedButton.styleFrom(
// elevation: 10,
// padding: EdgeInsets.all(10.0),
// primary: colors.buttonColor,
// shape: new RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(2.0))),
// ),
// ),
// //
// // Padding(
// //   padding: const EdgeInsets.all(30.0),
// //   child: ElevatedButton(
// //
// //
// //     child: Text("Generate", style: GoogleFonts.montserrat(
// //         color: Color(0xff171B72),
// //         fontSize: 16
// //
// //     ),),
// //     onPressed: () {
// //       print(widget.phoneNumber);
// //       _generateOTP();
// //     },
// //     style: ElevatedButton.styleFrom(
// //         elevation: 2,
// //         padding: EdgeInsets.all( 10.0),
// //         primary: Colors.white,
// //         shape: new RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(2.0)
// //         )
// //     ),
// //
// //   ),
// // ),
// ],
// ),
// ),
// );
// }
// }
