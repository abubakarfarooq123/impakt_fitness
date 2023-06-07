import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/gym/video_screen.dart';

class Start_Workout extends StatefulWidget {
  const Start_Workout({super.key});

  @override
  State<Start_Workout> createState() => _Start_WorkoutState();
}

class _Start_WorkoutState extends State<Start_Workout> {
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
                      "Workout",
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
              width: MediaQuery.of(context).size.width/1.1,
              height: 500,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 28, 30, 45),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text("Dublin",style: GoogleFonts.poppins(
                          color: Colors.white
                        ),),
                        SizedBox(
                          height: 7,
                        ),
                        Text("02:17",style: GoogleFonts.poppins(
                            color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text("5 mins",style: GoogleFonts.poppins(
                            color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Video_screen()),
                      );

                    },
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/vid.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 82, 84, 103),
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_double_arrow_left_outlined,color: Colors.white,
                        ),
                      ),
                    ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 211, 35, 66),
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 82, 84, 103),
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Icon(
                            Icons.keyboard_double_arrow_right_outlined,color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 35, 66),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Complete",style: GoogleFonts.poppins(
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
