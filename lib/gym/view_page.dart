import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/gym/start_workout.dart';

class View_page extends StatefulWidget {
  const View_page({super.key});

  @override
  State<View_page> createState() => _View_pageState();
}

class _View_pageState extends State<View_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios,
                          size: 30, color: Colors.white)),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      "Workout",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 40),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Ask Kat",
                      style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pro.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/rope.png"),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 140,
                    top: 80,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        size: 34,
                        color: Color.fromARGB(255, 211, 35, 66),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Dublin",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(
                    FontAwesomeIcons.clock,
                    size: 18,
                    color: Color.fromARGB(255, 211, 35, 66),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "20 mins",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/floo.png"),
                    backgroundColor: Colors.transparent,
                    radius: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Full Body",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/bolt.png"),
                    backgroundColor: Colors.transparent,
                    radius: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "~950 Kcal",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Category",
                          style: GoogleFonts.poppins(
                              color: Colors.white54, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Workout",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Level",
                          style: GoogleFonts.poppins(
                              color: Colors.white54, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Medium",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Weight",
                          style: GoogleFonts.poppins(
                              color: Colors.white54, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lose",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                "Most people feel they have some basic flaws with their appearance, and the truth is that the stars are no exception. Beauties like Angelina Jolie and Beyo ...",
                style: GoogleFonts.poppins(
                  color: Colors.white60,
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "Let’s Calibrate to for you:",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      "Strength Test",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Sed voluptatem fugit sunt. Placeat et assumenda sapiente. Ex ut porro ratione id.",
                      style: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      "Calculate Weight",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Ut perspiciatis vel sed sed esse eius. Aperiam incidunt ratione nihil magn.",
                      style: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Start_Workout()),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(55, 55, 55, 55),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text("Start Workout",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20
                    ),),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 35, 66),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Start Excercises",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20
                  ),),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
