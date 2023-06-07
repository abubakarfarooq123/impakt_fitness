import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:impakt_fitness/grocries/grocries.dart';
import 'package:impakt_fitness/weight/weight.dart';
import 'package:line_icons/line_icons.dart';

import 'dine/dine.dart';
import 'gym/gym.dart';
import 'home/home.dart';


class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  _HomeNavBarState createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: _getPage(_selectedIndex),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 30, 45),

              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 20, 22, 34),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        style: GoogleFonts.poppins(color: Colors.white54),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.white54),
                          suffixIcon: Icon(Icons.qr_code, color: Colors.white54),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 7, right: 3),
                    child: GNav(
                      gap: 5,
                      activeColor: Colors.white,
                      color: Colors.white,
                      iconSize: 22,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      duration: Duration(milliseconds: 500),
                      tabBackgroundColor: Color.fromRGBO(255, 87, 87, 30),
                      tabs: [
                        GButton(
                          icon: Icons.home,
                        ),
                        GButton(
                          icon: MaterialCommunityIcons.dumbbell,
                        ),
                        GButton(
                          icon: MaterialCommunityIcons.arm_flex,
                        ),
                        GButton(
                          icon: MaterialCommunityIcons.food_fork_drink,
                        ),
                        GButton(
                          icon: MaterialCommunityIcons.basket_fill
                        ),
                      ],
                      selectedIndex: _selectedIndex,
                      onTabChange: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Home();
      case 1:
        return Gym();
      case 2:
        return Weight();
      case 3:
        return Dine();
      case 4:
        return Grocries();
      default:
        return Center(child: Text('Page not found'));
    }
  }
}

