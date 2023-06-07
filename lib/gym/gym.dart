import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/gym/view_page.dart';
import 'package:intl/intl.dart';

import '../home/chart/bar_graph.dart';
import 'chart_gym/bar_graph_gym.dart';

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  PageController? _pageController;
  DateTime? _currentDate;
  DateFormat? _dayFormat;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _currentDate = DateTime.now();
    _dayFormat = DateFormat('EEE');
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  void _selectDate(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<double> weeklySummary =[
    2.40,
    1.50,
    22.42,
    50.50,
    120.20,
    66.99,
    40.0,
  ];
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('E, MMM d');

    final String formattedDate = formatter.format(now);

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
                  "Workouts",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _pageController?.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                Text(
                  DateFormat('MMM yyyy').format(DateTime.now()),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _pageController?.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ],
            ),
            Container(
              height: 100, // Adjust the height as needed
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
              ),
              child: PageView.builder(
                controller: _pageController,
                itemCount: (_currentDate!.year - DateTime.now().year + 1) *
                    12 *
                    31, // Number of pages until 1/1/2025
                itemBuilder: (context, index) {
                  final startDate =
                      DateTime.now().add(Duration(days: index * 7));
                  final dates =
                      List.generate(7, (i) => startDate.add(Duration(days: i)));
                  final dayOfWeeks =
                      dates.map((date) => _dayFormat?.format(date)).toList();
                  final dayNumbers = dates.map((date) => date.day).toList();

                  return Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        7,
                        (i) => GestureDetector(
                          onTap: () =>
                              _selectDate(i), // Call the selectDate method
                          child: Container(
                            width: MediaQuery.of(context).size.width / 7,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: _selectedIndex == i
                                    ? Color.fromARGB(255, 211, 35, 66)
                                    : null, // Highlight the selected container with red color
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  dayOfWeeks[i]!,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  dayNumbers[i].toString(),
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 15),
              child: Row(
                children: [
                  Text('$formattedDate',style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight:FontWeight.w600
                  ),
                  ),
                  Text(' Today',style: GoogleFonts.poppins(
                      color: Colors.white54,
                      fontSize: 15
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/images/intrr.png"),
                ),
                borderRadius: BorderRadius.circular(10)
              ),
          child: Stack(
            children: [
            Positioned(
              right: 20,
              top: 90,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => View_page()),
                  );
                },
                child: Container(
                height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 211, 35, 66),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("View",style: GoogleFonts.poppins(
                            color: Colors.white
                        ),),
                      ),
                      Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 20,),
                    ],
                  ),
                ),
              ),
            ),
              Positioned(
                  left: 20,
                  top: 65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dublin",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.clock,size: 20,color: Colors.white,),
                      SizedBox(
                        width: 5,
                      ),
                      Text("20 mins",style: GoogleFonts.poppins(
                        color: Colors.white
                      ),),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/images/flo.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Full Body",style: GoogleFonts.poppins(
                          color: Colors.white
                      ),),

                    ],
                  ),
                ],
              ))
          ],
        ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 200,
                width:MediaQuery.of(context).size.width/1.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(55,55, 55, 55),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 70,
                        bottom: 15,
                        child: Container(
                          height:120,
                          width: 200,
                          child: MyBarGraph1(
                            weeklySummary: weeklySummary,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                                Text("Calories Burnt",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                ),),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text("3.463",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28
                                ),),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("cal",style: GoogleFonts.poppins(
                                    color: Colors.white54,
                                    fontSize: 18
                                ),),

                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 200,
                width:MediaQuery.of(context).size.width/1.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(55,55, 55, 55),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 70,
                        bottom: 15,
                        child: Container(
                          height:120,
                          width: 200,
                          child: MyBarGraph1(
                            weeklySummary: weeklySummary,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Workout Mins",style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text("34",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28
                                ),),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Min",style: GoogleFonts.poppins(
                                    color: Colors.white54,
                                    fontSize: 18
                                ),),

                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 200,
                width:MediaQuery.of(context).size.width/1.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(55,55, 55, 55),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 50,
                        bottom: 15,
                        child: Container(
                          height:200,
                          width: 250,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 70),
                                child: Image.asset("assets/images/redline.png"),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("24",style: GoogleFonts.poppins(
                                    color: Colors.white
                                  ),),
                                  Text("25",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Text("26",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Text("27",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Text("28",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Text("29",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Text("30",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Weight Loss",style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text("12",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28
                                ),),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Lbs",style: GoogleFonts.poppins(
                                    color: Colors.white54,
                                    fontSize: 18
                                ),),

                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
