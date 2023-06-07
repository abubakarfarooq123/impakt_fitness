import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'excercise_detail.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSelected7 = false;
  bool isSelected8 = false;
  bool isSelected9 = false;
  bool isSelected10 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                    width: MediaQuery.of(context).size.width / 1.9,
                  ),
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
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Exercises",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected1 = !isSelected1;
                      isSelected2 = false;
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(

                        color: isSelected1
                            ? Color.fromARGB(255, 211, 35, 66)
                            : Color.fromARGB(55, 55, 55, 55),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 20,
                            right: 10,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5,top: 4),
                                child: Text("Home Workout",style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700
                                ),),
                              ),
                            )),
                        Positioned(
                          top: 20,
                          left: 8,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: isSelected1
                                ? Icon(
                              Icons.check,
                              color: Color.fromARGB(255, 211, 35, 66),
                            )
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected1 = false;
                      isSelected2 = !isSelected2;
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                        color: isSelected2
                            ? Color.fromARGB(255, 211, 35, 66)
                            : Color.fromARGB(55, 55, 55, 55),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 20,
                            right: 10,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5,top: 4),
                                child: Text("Gym Workout",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700
                                ),),
                              ),
                            ),
                        ),
                        Positioned(
                          top: 20,
                          left: 8,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: isSelected2
                                ? Icon(
                              Icons.check,
                              color: Color.fromARGB(255, 211, 35, 66),
                            )
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text("Set Timer:",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("00",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 26,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(":",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20
                ),),
                SizedBox(
                  width: 10,
                ),

                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("00",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                Text(":",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20
                ),),
                SizedBox(
                  width: 10,
                ),

                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("00",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Choose Muscle Workout:",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/3.8,
                ),
                Text("Show All",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected3 = !isSelected3;
                  isSelected4 = false;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/biceps.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Biceps",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected3
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected3 = false;
                  isSelected4 = !isSelected4;

                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/chest.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Chest",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected4
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected4 = false;
                  isSelected5 = !isSelected5;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/back.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Back",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected5
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected5 = false;
                  isSelected6 = !isSelected6;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/glutes.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Glutes",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected6
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected6 = false;
                  isSelected7 = !isSelected7;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/tri.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Triceps",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected7
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected7 = false;
                  isSelected8 = !isSelected8;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/abs.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Core",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected8
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected8 = false;
                  isSelected9 = !isSelected9;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/shoulders.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Shoulder",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected9
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected9 = false;
                  isSelected10 = !isSelected10;
                });
              },
              child:  Container(
                height: 70,
                width: MediaQuery.of(context).size.width/1.07,
                decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height:50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.06),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/images/leg.png"),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      child: Text("Upper Legs",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 48, 69),
                            shape: BoxShape.circle
                        ),
                        child: isSelected10
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    )
                  ],

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
                  MaterialPageRoute(builder: (context) => Excercise_Detail()),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 35, 66),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Generate Workout",style: GoogleFonts.poppins(
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
