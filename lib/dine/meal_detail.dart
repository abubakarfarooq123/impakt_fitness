import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impakt_fitness/gym/start_workout.dart';

class Meal_details extends StatefulWidget {
  const Meal_details({super.key});

  @override
  State<Meal_details> createState() => _Meal_detailsState();
}

class _Meal_detailsState extends State<Meal_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 30, 45),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
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
                    width: MediaQuery.of(context).size.width/3.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      "Meal",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width/8.3),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Ask Kat",
                      style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pro.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ava.png"),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                        "Avocado & Egg",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2.8,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/images/board.png")),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Protein",
                          style: GoogleFonts.poppins(
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
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Fat",
                          style: GoogleFonts.poppins(
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
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(55, 55, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Carbs",
                          style: GoogleFonts.poppins(
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
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(55, 55, 55, 55),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text(
                            "Recipe Make:",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "3 Serving",
                          style: GoogleFonts.poppins(
                              color: Colors.white54,
                              fontSize: 17,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 90,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(55, 55, 55, 55),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text(
                            "Total Prep Time:",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "25 Mins",
                          style: GoogleFonts.poppins(
                              color: Colors.white54,
                              fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Text("Odit aliquam suscipit ipsum aut fugit non. Et rerum quibusdam. Dolor nihil voluptatem at. Harum nesciunt cupiditate excepturi sint omnis. Quia repudiandae dolorem quo ullam ut est quo quaerat suscipit.",
                style:GoogleFonts.poppins(
                  color: Colors.white54,

                ) ,),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text("Directions:",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("01:",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
                SizedBox(
                  width: 5,
                ),
                Text("Et sequi asperiores voluptatem nihil \nharum itaque et id tempora. Vero qui \nipsam neque.",style: GoogleFonts.poppins(
                    color: Colors.white54,
                    fontSize: 15
                ),),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("02:",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),),
                SizedBox(
                  width: 5,
                ),
                Text("Qui nihil amet ducimus minus quisquam \nmaxime totam voluptatem. Omnis \nlaudantium totam odit possimus \nmollitia no.",style: GoogleFonts.poppins(
                    color: Colors.white54,
                    fontSize: 15
                ),),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("03:",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),),
                SizedBox(
                  width: 5,
                ),
                Text("Saepe aut nesciunt dignissimos excepturi\nexplicabo exercitationem facilis velit \nmagni. Quaerat unde voluptatem a \nasperiores laborum enim.Necessitatibus \ndeserunt consectetur nesciunt quisquam \naut rerum esse. Ex facilis earum error \nconsectetur qui. Et molestiae perferendis \neos corporis.",style: GoogleFonts.poppins(
                    color: Colors.white54,
                    fontSize: 15
                ),),

              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text("Ingredients:",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("1 cup of Almond Milk\nProtein: 1gm, Carbs: 1gm, Cal: 30gm, Fat: 2gm",
              style: GoogleFonts.poppins(
                color: Colors.white54,
                fontSize: 15

              ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("1 cup blackberries Raw\nProtein: 1gm, Carbs: 1gm, Cal: 30gm, Fat: 2gm",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 15

              ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("1 teaspoon cinnamon\nProtein: 1gm, Carbs: 1gm, Cal: 30gm, Fat: 2gm",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 15

              ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("5 oz of Egg whites\nProtein: 1gm, Carbs: 1gm, Cal: 30gm, Fat: 2gm",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 15

              ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("1 egg with yolk\nProtein: 1gm, Carbs: 1gm, Cal: 30gm, Fat: 2gm",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 15

              ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("1/2 cup of oatmeal\nProtein: 1gm, Carbs: 1gm, Cal: 30gm, Fat: 2gm",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 15

              ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                height: 1,
                color: Colors.white24,
                thickness: 1,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text("Tags:",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 35, 66),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Transform.rotate(
                              angle: 1.50, // Rotate by 180 degrees (pi radians)
                              child: Icon(FontAwesomeIcons.tag,color: Colors.white,),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("High Fiber",style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
