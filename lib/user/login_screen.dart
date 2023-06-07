import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:impakt_fitness/user/forgot.dart';
import 'package:impakt_fitness/user/pricing_plan.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({Key? key}) : super(key: key);

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  bool registera = true;
  bool _obscureText = true;

  void _toggleSwitch(int? index) {
    setState(() {
      registera = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: 255,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: ToggleSwitch(
                  minWidth: 115.0,
                  minHeight: 50.0,
                  cornerRadius: 40.0,
                  activeBgColors: [
                    [Color.fromARGB(255, 211, 35, 66)],
                    [Color.fromARGB(255, 211, 35, 66)]
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.black26,
                  inactiveFgColor: Colors.grey.withOpacity(0.2),
                  labels: ['Login', 'SignUp'],
                  initialLabelIndex: registera ? 0 : 1,
                  onToggle: _toggleSwitch,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (registera) _buildregister(),
                if (!registera) _buildlogin(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildregister() {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome Back!",
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Let’s login for explore Fitness",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Email",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          color: Colors.white), // Set the text color to white
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 211, 35, 66),
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Password",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      style: GoogleFonts.poppins(color: Colors.white),
                      autofocus: false,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        labelStyle: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color.fromRGBO(255, 87, 87, 30),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 20,
                          color: Color.fromARGB(255, 211, 35, 66),
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forget()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 160, top: 12),
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pricing_Plan()),
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
                          "Login",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 1,
                        width: 90,
                        child: Divider(
                          color: Colors.grey.withOpacity(0.7),
                          height: 2,
                          thickness: 1, // Specify the thickness of the divider
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Can Connect with",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 1,
                        width: 90,
                        child: Divider(
                          color: Colors.grey.withOpacity(0.7),
                          height: 2,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap:_buildregister,
                        child: Text(
                          "Sign Up here",
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 211, 35, 66),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildlogin() {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to Impakt!",
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Let’s Signup for explore Fitness",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Email",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          color: Colors.white), // Set the text color to white
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 211, 35, 66),
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Name",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      style: GoogleFonts.poppins(color: Colors.white),
                      autofocus: false,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Enter Name",
                        labelStyle: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 20,
                          color: Color.fromARGB(255, 211, 35, 66),
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Password",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      style: GoogleFonts.poppins(color: Colors.white),
                      autofocus: false,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        labelStyle: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color.fromRGBO(255, 87, 87, 30),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 20,
                          color: Color.fromARGB(255, 211, 35, 66),
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Confirm Password",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      style: GoogleFonts.poppins(color: Colors.white),
                      autofocus: false,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Re enter Password",
                        labelStyle: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color.fromRGBO(255, 87, 87, 30),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 20,
                          color: Color.fromARGB(255, 211, 35, 66),
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pricing_Plan()),
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
                          "Login",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 1,
                        width: 90,
                        child: Divider(
                          color: Colors.grey.withOpacity(0.7),
                          height: 2,
                          thickness: 1, // Specify the thickness of the divider
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Can Connect with",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 1,
                        width: 90,
                        child: Divider(
                          color: Colors.grey.withOpacity(0.7),
                          height: 2,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: _buildlogin,
                        child: Text(
                          "Sign In here",
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 211, 35, 66),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
