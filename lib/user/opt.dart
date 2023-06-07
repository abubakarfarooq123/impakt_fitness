import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'forgot.dart';
import 'login_screen.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController textEditingController = TextEditingController();
  // Change this value to the length of your OTP code
  int _otpLength = 6;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,28,30,45),

      body: Container(
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 240,top: 60),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Main_Screen()));
                },
                child: Icon(
                  FontAwesomeIcons.multiply,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Text(
                "Enter OTP",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 5),
              child: Text(
                "Enter OTP received on Hello@Zachry.com.",
                style: GoogleFonts.poppins(
                    color: Colors.white54,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                ),),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
              child: PinCodeTextField(
                controller: textEditingController,
                length: _otpLength,
                obscureText: true,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  selectedFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  activeFillColor: Colors.transparent,
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.blueAccent,
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                animationDuration: Duration(milliseconds: 300),
                onChanged: (value) {},
                onCompleted: (value) {
                  print("Completed");
                },  appContext: context,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Main_Screen()),
                );
              },
              child: Center(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 211, 35, 66),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Change Password",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
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