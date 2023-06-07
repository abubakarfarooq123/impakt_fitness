import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    simulateLoading();
  }

  void simulateLoading() {
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _progress += 0.1;
        if (_progress >= 1.0) {
          _progress = 1.0;
          _controller.stop();
          navigateToNextScreen();
        } else {
          simulateLoading();
        }
      });
    });
  }
  void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Intro_Screen()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 35, 66),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 260,
            ),
            Center(child: Image.asset('assets/images/splash.png')),
            SizedBox(height: 270),
            Padding(
              padding: EdgeInsets.only(top: 18,left: 15,right: 50),
              child: Stack(
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: Offset(2.0 * _progress - 1.0, 0.0),
                    ).animate(_animation),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 25,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            '${(_progress * 100).toInt()} %',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black,

                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  LinearProgressIndicator(
                    value: _progress,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
