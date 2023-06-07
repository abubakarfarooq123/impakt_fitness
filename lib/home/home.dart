import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navbar.dart';
import 'chart/bar_graph.dart';
import 'drawer.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double>  _animation;

  bool _isDrawerOpen = false;

  List<double> weeklySummary =[
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.0,
  ];
  @override
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
      if (_isDrawerOpen) {
        _animationController?.forward();
      } else {
        _animationController?.reverse();
      }
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,28,30,45),
      body: Stack(
        children: [
        _buildDrawer(),
    _buildMainContent(),
    ],
    ),
    );
  }
  Widget _buildDrawer() {
    return SizedBox(
      width: 350.0,
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 28, 30, 45),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 48.0),
              InkWell(
                onTap: _toggleDrawer,
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(FontAwesomeIcons.multiply,color: Colors.white,size: 30,),
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pro.png",),
                      radius: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("David Wilson",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      Text("Davi.Wilson@gmail.com",style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 12
                      ),)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 35, 66),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/trai.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Training Details',style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/bell.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Reminder',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 73,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/goal.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Goal',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/phot.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Photos',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 96,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/cro.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pricing Plans',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 50,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/share.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Share Us',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/thumb.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rate Us',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/feed.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Feedback',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 72,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/pri.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Privacy Policy',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 35, 66),
                        borderRadius: BorderRadius.circular(10)
                      ),
                        child: Center(
                          child: Text("Log Out",style: GoogleFonts.poppins(
                            color: Colors.white,

                          ),),
                        ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildMainContent() {
    return GestureDetector(

      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          double slide = 250.0 * _animation.value;
          double scale = 1 - (_animation.value * 0.3);
          return Transform(
            transform: Matrix4.identity()
              ..translate(slide)
              ..scale(scale),
            alignment: Alignment.centerLeft,
            child: Scaffold(
              backgroundColor: Color.fromARGB(255, 28, 30, 45),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                            onTap: _toggleDrawer,
                            child: Image.asset("assets/images/drawer.png")),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.9,
                        ),
                        Text("Ask Kat",style: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/pro.png"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, David Wilson",style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 23
                            ),),
                            Text("Let’s make an Impakt",style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 16
                            ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: CircularProgressIndicator(
                                value: 75 / 100,
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 211, 35, 66)),
                                backgroundColor: Color.fromARGB(255, 82, 84, 103),
                              ),
                            ),
                            Text(
                              "  234\nof 250",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: CircularProgressIndicator(
                                value: 60 / 100,
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 211, 35, 66)),
                                backgroundColor: Color.fromARGB(255, 82, 84, 103),
                              ),
                            ),
                            Text(
                              "  123\nof 250",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: CircularProgressIndicator(
                                value: 83 / 100,
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 211, 35, 66)),
                                backgroundColor: Color.fromARGB(255, 82, 84, 103),
                              ),
                            ),
                            Text(
                              "  266\nof 250",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: CircularProgressIndicator(
                                value: 65 / 100,
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 211, 35, 66)),
                                backgroundColor: Color.fromARGB(255, 82, 84, 103),
                              ),
                            ),
                            Text(
                              "  156\nof 250",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Protein",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                        Text("Carbs",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                        Text("Fats",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                        Text("Calories",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 100,
                        width:MediaQuery.of(context).size.width/1.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 211, 35, 66),
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
                                right: 5,
                                bottom: 15,
                                child: Container(
                                  height:100,
                                  width: 170,
                                  child: MyBarGraph(
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
                                    Row(
                                      children: [
                                        Text("Your Goal:",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13
                                        ),),
                                        Text(" (Weight Loss)",style: GoogleFonts.poppins(
                                            color: Colors.white54,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13
                                        ),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("85 lbs",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24
                                    ),),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Current: 86 lbs",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13
                                    ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width/1.04,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(55,55, 55, 55),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right:10,
                            top: 17,
                            child: Image.asset(
                                "assets/images/egg.png"
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Your next Meal:",style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                                ),
                                Row(
                                  children: [
                                    Text("Avacado & Egg",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top: 5),
                                      child: Text("(Breakfast)",style: GoogleFonts.poppins(
                                        color: Colors.white54,
                                        fontSize: 13,
                                      ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width/1.04,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(55,55, 55, 55),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 15,
                            top: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Today’s Workouts",style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                                ),
                                Row(
                                  children: [
                                    Text("34",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top: 5),
                                      child: Text("Let's do it!",style: GoogleFonts.poppins(
                                        color: Colors.white54,
                                        fontSize: 13,
                                      ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width/2.24,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(55,55, 55, 55),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  right:10,
                                  top: 30,
                                  child: Image.asset("assets/images/fir.png")),
                              Positioned(
                                left: 8,
                                top: 25,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Body Calories:",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 13
                                    ),
                                    ),
                                    Text("400",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width/2.24,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(55,55, 55, 55),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  right:10,
                                  top: 30,
                                  child: Image.asset("assets/images/step.png")),
                              Positioned(
                                left: 8,
                                top: 25,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Steps:",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 13
                                    ),
                                    ),
                                    Text("2,356",style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),

            ),
          );
        },
      ),
    );
  }
}
