import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/dine/change_meal.dart';
import 'package:impakt_fitness/dine/shopping_list.dart';
import 'package:intl/intl.dart';

import 'meal_detail.dart';

class Dine extends StatefulWidget {
  const Dine({super.key});

  @override
  State<Dine> createState() => _DineState();
}

class _DineState extends State<Dine> {
  String selectedCategory = "All Meals"; // Initially selected category is "All Meals"

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
    // Widget currentScreen;
    // switch (selectedCategory) {
    //   case "All Meals":
    //     currentScreen = All_Meals();
    //     break;
    //   case "Breakfast":
    //     currentScreen = BreakFast();
    //     break;
    //   case "Lunch":
    //     currentScreen = Lunch();
    //     break;
    //   case "Dinner":
    //     currentScreen = Dinner();
    //     break;
    // }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
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
                    width: MediaQuery.of(context).size.width / 1.3,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shopping_list()),
                      );

                    },
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/images/board.png"),
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Meals",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
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
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedCategory = "All Meals"; // Update selected category
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedCategory == "All Meals" ? Colors.white : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Text(
                        "All Meals",
                        style: GoogleFonts.poppins(
                          color: selectedCategory == "All Meals" ? Colors.white : Colors.white54,
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
                        selectedCategory = "Breakfast"; // Update selected category
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedCategory == "Breakfast" ? Colors.white : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Text(
                        "Breakfast",
                        style: GoogleFonts.poppins(
                          color: selectedCategory == "Breakfast" ? Colors.white : Colors.white54,
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
                        selectedCategory = "Lunch"; // Update selected category
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedCategory == "Lunch" ? Colors.white : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Text(
                        "Lunch",
                        style: GoogleFonts.poppins(
                          color: selectedCategory == "Lunch" ? Colors.white : Colors.white54,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Meal_details()),
                      );
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
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 28, 30, 45),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(FontAwesomeIcons.check,color: Colors.white,),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 28, 30, 45),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(Icons.list_alt_outlined,color: Colors.white,),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),

                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Change_meal()),
                                    );
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 28, 30, 45),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Image.asset("assets/images/aa.png")
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
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 28, 30, 45),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Icon(FontAwesomeIcons.check,color: Colors.white,),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 28, 30, 45),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Icon(Icons.list_alt_outlined,color: Colors.white,),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Change_meal()),
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 28, 30, 45),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                  child: Image.asset("assets/images/aa.png")
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

// class All_Meals extends StatefulWidget {
//   const All_Meals({super.key});
//
//   @override
//   State<All_Meals> createState() => _All_MealsState();
// }
//
// class _All_MealsState extends State<All_Meals> {
//   @override
//   Widget build(BuildContext context) {
//     return Sc;
//   }
// }
//
//
// class BreakFast extends StatefulWidget {
//   const BreakFast({super.key});
//
//   @override
//   State<BreakFast> createState() => _BreakFastState();
// }
//
// class _BreakFastState extends State<BreakFast> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
//
//
// class Lunch extends StatefulWidget {
//   const Lunch({super.key});
//
//   @override
//   State<Lunch> createState() => _LunchState();
// }
//
// class _LunchState extends State<Lunch> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
//
// class Dinner extends StatefulWidget {
//   const Dinner({super.key});
//
//   @override
//   State<Dinner> createState() => _DinnerState();
// }
//
// class _DinnerState extends State<Dinner> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
