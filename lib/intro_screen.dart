import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/term_codition.dart';
import 'package:impakt_fitness/user/login_screen.dart';

import 'navbar.dart';
class Intro_Screen extends StatefulWidget {
  const Intro_Screen({super.key});

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,28,30,45),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
                child: Image.asset(
                    "assets/images/intro.png"
                ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome to",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Impakt Fitness",style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Welcome to Impakt Fitness, your ultimate fitness companion in the palm of your hand! We are thrilled to present our cutting-edge mobile app designed to revolutionize your fitness journey. Whether you're a seasoned fitness enthusiast or just starting out, our app is here to inspire, guide, and motivate you every step of the way. Together we will make an Impakt!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 13,
              ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Term_Condition()),);
                  },
                  child: Text("Terms & Conditions",style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 211, 35, 66),
                    fontSize: 14,
                  ),),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: (){},
                  child: Text("About Impakt Fitness",style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 211, 35, 66),
                    fontSize: 14,
                  ),),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Main_Screen()),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 43, 47, 66),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Login",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeNavBar()),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 35, 66),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Get Started",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
