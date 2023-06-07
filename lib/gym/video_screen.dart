import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Video_screen extends StatefulWidget {
  const Video_screen({super.key});

  @override
  State<Video_screen> createState() => _Video_screenState();
}

class _Video_screenState extends State<Video_screen> {
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
              alignment: AlignmentDirectional.centerStart,
              child:
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(Icons.arrow_back_ios,
                            size: 30, color: Colors.white),
                      )),

            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/vid.png"),
                )
              ),
              child: Stack(
                children: [
                  Positioned(
                    left:10,
                    top: 20,
                    child: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                          child: Text("00 : 26",style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 211, 35, 66),
                            fontWeight: FontWeight.w600
                          ),)),
                    ),
                  ),
                  Positioned(
                    right: 70,
                    top: 170,
                    child: Row(
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
                        SizedBox(
                          width: 20,
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
                        SizedBox(
                          width: 20,
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
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
