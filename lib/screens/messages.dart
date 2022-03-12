import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:rexora1/utils/colors.dart' as colors;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';



import '../chat/chatUsersModel.dart';
import '../chat/conversationList.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<User> chatUsers = [];
  var loading = false;
  Future<Null> getData() async{
    setState(() {
      loading = true;
    });
    final responseData = await http.get(Uri.parse('"https://neetishsingh.free.beeceptor.com/chatinbox"'));
    print(responseData.body);
    print("response");
    if(responseData.statusCode == 200){
      final data = jsonDecode(responseData.body);
      print(data);
      setState(() {
        for(Map i in data){
          chatUsers.add(User.fromJson(i));
        }
        loading = false;
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override

  Widget build(BuildContext context) {
    print(chatUsers);

    return   Scaffold(
        body: CustomScrollView(
          slivers: [
           SliverAppBar(


backgroundColor: colors.textColor,
              title: Text('Messages', style: GoogleFonts.poppins(
                color: colors.textColor2,
                fontSize: 20,
                fontWeight: FontWeight.bold,

              ),),
elevation: 0,
             actions: [
               IconButton(onPressed: (){}, icon: Icon(Icons.add, size: 24,color: colors.textColor2,))
             ],
             automaticallyImplyLeading: false,

            ),
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: colors.textColor,
              title:  Container(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.grey.shade100
                        )
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return  ConversationList(
                    name: chatUsers[index].text,
                    messageText: chatUsers[index].secondaryText,
                    imageUrl: chatUsers[index].image,
                    time: chatUsers[index].time,
                    isMessageRead: chatUsers[index].isseen,
                  );
                },
                childCount: chatUsers.length, // 1000 list items
              ),
            ),
          ],
        ));
  }
}
