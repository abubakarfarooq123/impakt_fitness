import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../navbar.dart';
class Shopping_list extends StatefulWidget {
  const Shopping_list({super.key});

  @override
  State<Shopping_list> createState() => _Shopping_listState();
}

class _Shopping_listState extends State<Shopping_list> {
  int? selectedContainer;

  void selectContainer(int index) {
    setState(() {
      if (selectedContainer == index) {
        selectedContainer = null;
      } else {
        selectedContainer = index;
      }
    });
  }

  Widget buildContainer(String itemName, String quantity, int index) {
    return GestureDetector(
      onTap: () {
        selectContainer(index);
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 211, 35, 66),
              ),
              child: selectedContainer == index
                  ? Icon(Icons.check, color: Colors.white)
                  : null,
            ),


            Positioned(
              left: 50,
              child: Text(
                itemName,
                style: GoogleFonts.poppins(
                  color: selectedContainer == index ? Colors.white : Colors.white54,
                  fontSize: 18,
                  decoration: selectedContainer == index ? TextDecoration.lineThrough : null,
                ),
              ),
            ),
            Positioned(
              right: 20,
              child: Text(
                quantity,
                style: GoogleFonts.poppins(
                  color: selectedContainer == index ? Colors.white : Colors.white54,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



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
                Text("Shopping List",style: GoogleFonts.poppins(
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
              height: 30,
            ),
            buildContainer("Baking powder", "1 g", 0),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildContainer("Vegetables fresh", "10 g", 1),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            buildContainer("Balsamic vinergar", "35 g", 2),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            buildContainer("Banana", "75 g", 3),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            buildContainer("Beef", "100 g", 4),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            buildContainer("Bitter chocolate", "20 g", 5),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            buildContainer("Coconut milk", "1 L", 6),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
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
