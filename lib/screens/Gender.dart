import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/gift_policy.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String? value = 'Choose your pronouns';
  final items = ['Choose your pronouns', 'He/Him', 'She/Her', 'They/Them','Prefer Not to mention'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:    Color(0xFF4A5BB6),
    ),
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Color(0xFF4A5BB6),
    Color(0xFF18246D)
    ]
    )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: Image.asset("assets/gender.png"),
            ),
          ),
        ),
        Expanded(flex:2,
            child: ListView(

              children: [

                Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Let us know your pronoun",
                      style:  GoogleFonts.montserrat(color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w400
                      ),),
                  ),),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),

                    ),
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value,
                        iconSize: 36,
                        isExpanded: true,
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (value) => setState(() {
                          this.value= value;
                        }),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Gift()));
                    },


                    //Refer step 3
                    child: Text(
                      'Continue',
                      style:
                      TextStyle(color: Color(0xFF18246D), fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ))
      ],

    ),
    )
    );
  }
}
DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(item,
        style:  GoogleFonts.poppins(
            color: Colors.white.withOpacity(0.7))
    )
);