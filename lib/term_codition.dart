import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/navbar.dart';
class Term_Condition extends StatefulWidget {
  const Term_Condition({super.key});

  @override
  State<Term_Condition> createState() => _Term_ConditionState();
}

class _Term_ConditionState extends State<Term_Condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,28,30,45),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Terms & Conditions",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 80,top: 5),
                    child: InkWell(
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Subscription Cost: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' The mobile app subscription \nis priced at \$9.99 per month.',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Annual Subscription: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Alternatively, you have \nthe option to choose an annual subscription at \na cost of \$99.00, which automatically renews \non a yearly basis.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Auto-Renewal: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' If you select the annual \nsubscription it will auto-renew at the end of \neach year. The auto-renewal will be charged \nat the monthly rate of \$9.99 unless canceled.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Cancellation: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' You have the right to cancel \nyour subscription at any time. To avoid being \ncharged for the next billing cycle, you must \ncancel before the renewal date.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Refunds: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Please note that no refunds will be \nprovided for partial periods of subscription or \nunused portions of a subscription.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Payment: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' All payments for the mobile app \nsubscription will be processed through the \nselected app store\'s payment system, such \nas Apple App Store or Google Play Store.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Pricing Changes: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' The pricing for the mobile \napp subscription is subject to change at the \ndiscretion of the app provider. However, any \nchanges in pricing will not affect the ongoing \nsubscriptions until the next renewal period.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Termination: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' The app provider reserves the \nright to terminate or suspend your subscription \nin the event of a violation of the terms and \nconditions or any fraudulent activity.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Usage and Restrictions: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' By purchasing the \nmobile app subscription, you agree to use the \napp for personal, non-commercial purposes.\nAny unauthorized distribution, reproduction, or \nmodification of the app\'s content is strictly \nprohibited.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Liability: ',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'The app provider shall not be held \nliable for any damages, losses, or liabilities \narising from the use or inability to use the \nmobile app subscription.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\u2022',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Modification of Terms:',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' The app provider \nreserves the right to modify or update these \nterms and conditions at any time. Any change \nwill be effective immediately upon posting on \nthe app\'s website or notification within the \napp.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 5,bottom: 20),
              child: Text("Please read these terms and conditions carefully before making a purchase. By proceeding with the purchase, you acknowledge that you have read, understood, and agreed to abide by these terms and conditions.",style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
