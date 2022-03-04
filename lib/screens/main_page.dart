import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:rexora1/utils/colors.dart' as colors;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.textColor,
        leading: IconButton(
          icon: Icon(Icons.notifications_active_rounded),
          onPressed: () {},
          iconSize: 24,
          color: colors.textColor2,
        ),
        title: Center(
          child: Text(
            "Chennai, India",
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: colors.textColor2,
                fontWeight: FontWeight.w300),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        selectedItemColor: colors.background,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
              ),
              label: "home",
              backgroundColor: colors.buttonColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 24,
              ),
              label: "favorites"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                size: 24,
              ),
              label: "messages"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24,
              ),
              label: "profile"),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fun Interaction",
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          color: colors.textColor2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
Center(
  child:   Padding(
    padding: const EdgeInsets.all(8.0),
    child: FloatingSearchAppBar(body:null,
      hint: "Find Partner",
      color: colors.textBoxColor.withOpacity(0.5),
      elevation: 10,

    ),
  ),
)
                ],
              )),

          Expanded(child: ListView(
            children: [
              Row(
                children: [
                  Padding(
padding:EdgeInsets.all(10.0),
                    child: Text("Near you", style: GoogleFonts.poppins(
                      color: colors.textColor2,
                      fontSize: 20
                    ),),

                  ),
                  Spacer(),
                   Padding(
                     padding:EdgeInsets.all(10.0),
                    child: TextButton(child: Text("See All",
                      style: GoogleFonts.poppins(
                          color: colors.background,
                          fontSize: 18
                      ),),
                    onPressed: (){},),

                  )
                ],
              ),
              SingleChildScrollView(
                child:  Stack(
                  children: [
                    Column(
                      children: [
MainCard(),
                        MainCard(),
                        MainCard()
                      ],
                    )
                  ],
                )
              )
            ],
          ), flex: 3,)
        ],
      ),
    );
  }
}

 class MainCard extends StatefulWidget {
   const MainCard({Key? key}) : super(key: key);

   @override
   _MainCardState createState() => _MainCardState();
 }

 class _MainCardState extends State<MainCard> {
   @override
   Widget build(BuildContext context) {
     return Card(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20.0)
       ),
clipBehavior: Clip.antiAlias,
       elevation: 10,
       child: Column(
         children: [
           Stack(
             children: [
               Ink.image(image: AssetImage('assets/sign_up.png'),height: 240,fit: BoxFit.cover,
                ),

               // Align(
     //             child: Text("13.2k", style: GoogleFonts.poppins(
     //               color: colors.textColor2,
     // fontSize: 28,
     // fontWeight: FontWeight.w300,
     //
     //             ),),
     //             alignment: Alignment.bottomLeft,
     //           )

             ],
           ),
         ],
       ),
     );
   }
 }
