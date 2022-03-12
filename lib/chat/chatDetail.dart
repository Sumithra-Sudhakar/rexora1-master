import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
 
import 'package:rexora1/utils/colors.dart' as colors;

import '../screens/messages.dart';
import '../utils/pageroute.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List <Message> messages = [
    Message("Hi",
        DateTime.now().subtract(Duration(days:3,minutes: 1)),
        false),
    Message("Hi",
        DateTime.now().subtract(Duration(days:2,minutes: 1)),
        false),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        false),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        false),
    Message("Hi",
        DateTime.now().subtract(Duration(days:1,minutes: 1)),
        false),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        true),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        true),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        true),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        true),
    Message("Hi",
        DateTime.now().subtract(Duration(minutes: 1)),
        true),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.textColor,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
              Icons.phone,
          color: colors.textColor2,
          size: 20,))
        ],

        title: Text("User", style: GoogleFonts.poppins(
          fontSize: 18,
          color: colors.textColor2,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/chat_bg.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child:  GroupedListView<Message, DateTime>(
                padding: EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                elements: messages,
                groupBy: (message)=> DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day
                ),
                groupHeaderBuilder: (Message message)  => Container(
                  margin: EdgeInsets.fromLTRB(90, 5, 90, 5),
                  child: SizedBox(

                    height: 45,
                    child: Center(
                      child: Card(
                        color: colors.buttonColor,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(

                              DateFormat.yMMMd().format(message.date),
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  color: colors.textColor
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.isSentByMe?Alignment.centerRight: Alignment.centerLeft,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(message.text, style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: colors.textColor2,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 45,

                child: TextField(
                  style: GoogleFonts.poppins(color: colors.textColor2,
                  fontSize: 12,
                  ),
                  decoration:  InputDecoration(
                    fillColor:  Colors.grey.shade300,
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Type your message here...',
                    hintStyle: GoogleFonts.poppins
                      (color: colors.textColor2.withOpacity(0.7),
                      fontSize: 12,
                    ),
                      focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20.0),

                      ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),

                    ) ,
                    suffix: IconButton(
                      icon: Icon(Icons.send,
                      color: colors.buttonColor,
                      size: 25,),
                      onPressed: (){},
                    )


                  ),
                  cursorColor: colors.buttonColor,
                  onSubmitted: (text){
                    final message = Message(text, DateTime.now(), true);
                  setState(() {
                    messages.add(message);
                  });
                    },
                  cursorWidth: 4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Message{
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message(

      @required this.text,
      @required this.date,
      @required this.isSentByMe
      );
}