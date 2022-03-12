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





//
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
// import 'package:rexora1/utils/colors.dart' as colors;
//
// import '../chat/chatUsersModel.dart';
// import '../chat/conversationList.dart';
//
// class Messages extends StatefulWidget {
//   const Messages({Key? key}) : super(key: key);
//
//   @override
//   State<Messages> createState() => _MessagesState();
// }
//
// class _MessagesState extends State<Messages> {
//   List<ChatUsers> chatUsers = [
//     ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "images/userImage1.jpeg", time: "Now",),
//     ChatUsers(text: "Glady's Murphy", secondaryText: "That's Great", image: "images/userImage2.jpeg", time: "Yesterday"),
//     ChatUsers(text: "Jorge Henry", secondaryText: "Hey where are you?", image: "images/userImage3.jpeg", time: "31 Mar"),
//     ChatUsers(text: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", image: "images/userImage4.jpeg", time: "28 Mar"),
//     ChatUsers(text: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", image: "images/userImage5.jpeg", time: "23 Mar"),
//     ChatUsers(text: "Jacob Pena", secondaryText: "will update you in evening", image: "images/userImage6.jpeg", time: "17 Mar"),
//     ChatUsers(text: "Andrey Jones", secondaryText: "Can you please share the file?", image: "images/userImage7.jpeg", time: "24 Feb"),
//     ChatUsers(text: "John Wick", secondaryText: "How are you?", image: "images/userImage8.jpeg", time: "18 Feb"),
//     ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "images/userImage1.jpeg", time: "Now",),
//     ChatUsers(text: "Glady's Murphy", secondaryText: "That's Great", image: "images/userImage2.jpeg", time: "Yesterday"),
//     ChatUsers(text: "Jorge Henry", secondaryText: "Hey where are you?", image: "images/userImage3.jpeg", time: "31 Mar"),
//     ChatUsers(text: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", image: "images/userImage4.jpeg", time: "28 Mar"),
//     ChatUsers(text: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", image: "images/userImage5.jpeg", time: "23 Mar"),
//     ChatUsers(text: "Jacob Pena", secondaryText: "will update you in evening", image: "images/userImage6.jpeg", time: "17 Mar"),
//     ChatUsers(text: "Andrey Jones", secondaryText: "Can you please share the file?", image: "images/userImage7.jpeg", time: "24 Feb"),
//     ChatUsers(text: "John Wick", secondaryText: "How are you?", image: "images/userImage8.jpeg", time: "18 Feb"),
//     ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "images/userImage1.jpeg", time: "Now",),
//     ChatUsers(text: "Glady's Murphy", secondaryText: "That's Great", image: "images/userImage2.jpeg", time: "Yesterday"),
//     ChatUsers(text: "Jorge Henry", secondaryText: "Hey where are you?", image: "images/userImage3.jpeg", time: "31 Mar"),
//     ChatUsers(text: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", image: "images/userImage4.jpeg", time: "28 Mar"),
//     ChatUsers(text: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", image: "images/userImage5.jpeg", time: "23 Mar"),
//     ChatUsers(text: "Jacob Pena", secondaryText: "will update you in evening", image: "images/userImage6.jpeg", time: "17 Mar"),
//     ChatUsers(text: "Andrey Jones", secondaryText: "Can you please share the file?", image: "images/userImage7.jpeg", time: "24 Feb"),
//     ChatUsers(text: "John Wick", secondaryText: "How are you?", image: "images/userImage8.jpeg", time: "18 Feb"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//
//
//               backgroundColor: colors.textColor,
//               title: Text('Messages', style: GoogleFonts.poppins(
//                 color: colors.textColor2,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//
//               ),),
//               elevation: 0,
//               actions: [
//                 IconButton(onPressed: (){}, icon: Icon(Icons.add, size: 24,color: colors.textColor2,))
//               ],
//               automaticallyImplyLeading: false,
//
//             ),
//             SliverAppBar(
//               automaticallyImplyLeading: false,
//               backgroundColor: colors.textColor,
//               title:  Container(
//                 width: double.infinity,
//                 height: 40,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: "Search...",
//                     hintStyle: TextStyle(color: Colors.grey.shade600),
//                     prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
//                     filled: true,
//                     fillColor: Colors.grey.shade100,
//                     contentPadding: EdgeInsets.all(8),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: BorderSide(
//                             color: Colors.grey.shade100
//                         )
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                   return  ConversationList(
//                     name: chatUsers[index].text,
//                     messageText: chatUsers[index].secondaryText,
//                     imageUrl: chatUsers[index].image,
//                     time: chatUsers[index].time,
//                     isMessageRead: (index == 0 || index == 3)?true:false,
//                   );
//                 },
//                 childCount: chatUsers.length, // 1000 list items
//               ),
//             ),
//           ],
//         ));
//   }
// }
