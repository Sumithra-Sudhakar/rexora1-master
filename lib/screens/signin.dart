import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/sign_in.png",
                    fit: BoxFit.fill,
                  )),
              Expanded(
                  flex: 2,
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                        child: TextFormField(
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

                            )
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: TextFormField(
                          style: GoogleFonts.montserrat(color: Colors.white),
                          decoration: InputDecoration(

                              filled: true,
                              fillColor: Color(0xff424894),
                              hintText: "Enter your password",
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white.withOpacity(0.7),

                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5.0),

                              )
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(

                            icon: Icon(Icons.facebook, size: 24,color: Color(0xff171B72),),
                            label: Text("Facebook", style: GoogleFonts.montserrat(
                                color: Color(0xff171B72),
                                fontSize: 16

                            ),),
                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                                elevation: 2,
                                padding: EdgeInsets.all( 10.0),
                                primary: Colors.white,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)
                                )
                            ),

                          ),

                          ElevatedButton.icon(

                            icon: Icon(Icons.mail_outline, size: 24,color: Color(0xff171B72),),
                            label: Text("Google", style: GoogleFonts.montserrat(
                                color: Color(0xff171B72),
                                fontSize: 16

                            ),),
                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                                elevation: 2,
                                padding: EdgeInsets.all( 10.0),
                                primary: Colors.white,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)
                                )
                            ),

                          ),
                        ],
                      ),),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: ElevatedButton.icon(

                    icon: Icon(Icons.login, size: 24,color: Color(0xffffffff),),
                    label: Text("Sign in", style: GoogleFonts.montserrat(
                        color: Color(0xffffffffff),
                        fontSize: 16

                    ),),
                    onPressed: (){},

                    style: ElevatedButton.styleFrom(
                        elevation: 2,
                        padding: EdgeInsets.all( 10.0),
                        primary: Color(0xff424894),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)
                        )
                    ),

                  ),
                ),


                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUp()));
                  },
                  child: Text("New Here? Sign up ", style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.white,

                  ),),
                ),
              )
            ],
          )),
    );
  }
}
