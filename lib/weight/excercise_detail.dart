import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Excercise_Detail extends StatefulWidget {
  const Excercise_Detail({super.key});

  @override
  State<Excercise_Detail> createState() => _Excercise_DetailState();
}

class _Excercise_DetailState extends State<Excercise_Detail> {
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
                    width: 90,
                  ),
                  Text(
                    "Exercise",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Day 2/6 - Legs",style: GoogleFonts.poppins(
                    color: Colors.white
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 28, 30, 45),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Excercise",style: GoogleFonts.poppins(
                              color: Colors.white54,
                              fontSize: 14,
                            ),),
                            Text("04",style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 30, 45),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sets",style: GoogleFonts.poppins(
                              color: Colors.white54,
                              fontSize: 14,
                            ),),
                            Text("12",style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 30, 45),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Duaration",style: GoogleFonts.poppins(
                              color: Colors.white54,
                              fontSize: 14,
                            ),),
                            Text("45 min",style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Start Day 2",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20
                        ),),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Image.asset("assets/images/pick.png"),
                  Positioned(
                    left: 70,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Barbell Deadlift",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                        Text("4 sets - 10 Reps",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  color: Color.fromARGB(55, 55, 55, 55),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Image.asset("assets/images/scout.png"),
                  Positioned(
                    left: 70,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Leg Press",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),),
                        Text("4 sets - 10 Reps",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  color: Color.fromARGB(55, 55, 55, 55),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Image.asset("assets/images/mirror.png"),
                  Positioned(
                    left: 70,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dumbell Bulgarian",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),),
                        Text("4 sets - 10 Reps",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  color: Color.fromARGB(55, 55, 55, 55),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Image.asset("assets/images/hand.png"),
                  Positioned(
                    left: 70,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Standing Calf",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),),
                        Text("4 sets - 10 Reps",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5
                        ),),
                      ],
                    ),
                  ),
                ],
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
