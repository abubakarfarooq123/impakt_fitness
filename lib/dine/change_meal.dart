import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../navbar.dart';
import 'meal_detail.dart';
class Change_meal extends StatefulWidget {
  const Change_meal({super.key});

  @override
  State<Change_meal> createState() => _Change_mealState();
}

class _Change_mealState extends State<Change_meal> {
  String selectedCategory = "Vegetarian diets"; // Initially selected category is "Vegetarian diets"

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Change Meal",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.1,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeNavBar()));
                  },
                  child: Icon(
                    FontAwesomeIcons.multiply,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedCategory = "Vegetarian diets"; // Update selected category
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: selectedCategory == "Vegetarian diets" ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          "Vegetarian diets",
                          style: GoogleFonts.poppins(
                            color: selectedCategory == "Vegetarian dietss" ? Colors.white : Colors.white54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedCategory = "Muscle building"; // Update selected category
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: selectedCategory == "Muscle building" ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          "Muscle building",
                          style: GoogleFonts.poppins(
                            color: selectedCategory == "Muscle building" ? Colors.white : Colors.white54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedCategory = "Traditional diets"; // Update selected category
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: selectedCategory == "Traditional diets" ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          "Traditional diets",
                          style: GoogleFonts.poppins(
                            color: selectedCategory == "Traditional diets" ? Colors.white : Colors.white54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedCategory = "Dinner"; // Update selected category
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: selectedCategory == "Dinner" ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          "Dinner",
                          style: GoogleFonts.poppins(
                            color: selectedCategory == "Dinner" ? Colors.white : Colors.white54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              height: 350,
              width: MediaQuery.of(context).size.width/1.12,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Meal_details()),
                      // );
                    },
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/ava.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start  ,
                            children: [
                              Text("Avocado & Egg",style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                              ),),
                              Text("Breakfast",style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 15,
                              ),),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/3.6,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 211, 35, 66),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Icon(FontAwesomeIcons.check,color: Colors.white,),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(55, 55, 55, 55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Protein",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white, fontSize: 14),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "650",
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(55, 55, 55, 55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Fat",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white, fontSize: 14),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "126",
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(55, 55, 55, 55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Carbs",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white, fontSize: 14),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "139",
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width/1.12,
              decoration: BoxDecoration(
                color: Color.fromARGB(55, 55, 55, 55),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/fru.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start  ,
                            children: [
                              Text("Fruit Salad",style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                              ),),
                              Text("Breakfast",style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 15,
                              ),),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/4.6,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 211, 35, 66),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Icon(FontAwesomeIcons.check,color: Colors.white,),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(55, 55, 55, 55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Protein",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white, fontSize: 14),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "650",
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(55, 55, 55, 55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Fat",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white, fontSize: 14),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "126",
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(55, 55, 55, 55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Carbs",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white, fontSize: 14),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "139",
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
