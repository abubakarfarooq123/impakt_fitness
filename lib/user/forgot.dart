import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../navbar.dart';
import 'login_screen.dart';
import 'opt.dart';


class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 240,top: 60),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Main_Screen()));
              },
              child: Icon(
                FontAwesomeIcons.multiply,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Text(
              "Forgot Password",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 05),
            child: Text(
              "Enter Email to get code.",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 800,
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20,bottom: 10),
                              child: Text("Email",style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, right: 12),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                    color: Colors.white), // Set the text color to white
                                decoration: InputDecoration(
                                  labelText: "Enter Email",
                                  labelStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    size: 20,
                                    color: Color.fromARGB(255, 211, 35, 66),
                                  ),
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                onSaved: (value) {},
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OtpScreen()),
                                );
                              },
                              child: Center(
                                child: Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width / 1.2,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 211, 35, 66),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Continue",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}