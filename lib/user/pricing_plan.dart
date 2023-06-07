import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/navbar.dart';
import 'package:impakt_fitness/term_codition.dart';
import 'package:impakt_fitness/user/login_screen.dart';

class Pricing_Plan extends StatefulWidget {
  const Pricing_Plan({super.key});

  @override
  State<Pricing_Plan> createState() => _Pricing_PlanState();
}

class _Pricing_PlanState extends State<Pricing_Plan> {
  bool isSelected1 = false;
  bool isSelected2 = false;

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
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                alignment: Alignment.centerRight,
                child: Icon(
                  FontAwesomeIcons.multiply,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Pricing Plans",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Text(
                "Select the best suitable plan",
                style: GoogleFonts.poppins(color: Colors.white54, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 52, 66),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Image.asset("assets/images/scan.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Barcode Scan",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                        Text(
                          "Skip the search and log faster.",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 11),
                        ),
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
              height: 70,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 52, 66),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Image.asset("assets/images/eat.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Custom Macro Training",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                        Text(
                          "Find your balance of carbs, protein and fats.",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 11),
                        ),
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
              height: 70,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 52, 66),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Image.asset("assets/images/cart1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect your instacart account",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                        Text(
                          "Conveniently have your meal plans grocery\nlist delivered right to your door",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Choose Plan",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    height: 150,
                    decoration: BoxDecoration(
                        border: isSelected1
                            ? null
                            : Border.all(color: Colors.white),
                        color: isSelected1
                            ? Color.fromARGB(255, 211, 35, 66)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5))),
                          child: Center(
                              child: Text(
                            "Best Deal",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                        Positioned(
                            top: 35,
                            left: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "YEARLY",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "\$99.00",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "then \$9.99/mon if not\ncancelled",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white60, fontSize: 11),
                                ),
                              ],
                            )),
                        Positioned(
                          top: 35,
                          right: 10,
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
                    height: 150,
                    decoration: BoxDecoration(
                        border: isSelected2
                            ? null
                            : Border.all(color: Colors.white),
                        color: isSelected2
                            ? Color.fromARGB(255, 211, 35, 66)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 20,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "MONTHLY",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "\$9.99",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                          top: 20,
                          right: 8,
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeNavBar()),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 35, 66),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Term_Condition()),
                );
              },
              child: Text(
                "Terms & Conditions",
                style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
