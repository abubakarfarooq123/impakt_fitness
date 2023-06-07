import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text("Dashboard", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.dashboard),
                onTap: () {

                },
              ),
              ExpansionTile(
                title: Text(
                  "Staff",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.supervised_user_circle_rounded, size: 28,),
                children: [
                  ListTile(
                    title: Text("Employees", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.users),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Roles", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.work_outline),

                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: Text("Customer", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.user),
                onTap: () {

                },
              ),
              ExpansionTile(
                title: Text(
                  "Items",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(FontAwesomeIcons.shop),
                children: [
                  ListTile(
                    title: Text("Products", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.cube),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Categories", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.category),
                    onTap: () {



                    },
                  ),
                  ListTile(
                    title: Text("Brands", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.brandsFontAwesome),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    title: Text("Discounts", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.percentage),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Tax", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.handPaper),
                    onTap: () {

                    },
                  ),

                  ListTile(
                    title: Text("Unit", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.legal),
                    onTap: () {


                    },
                  ),
                ],
              ),
              ListTile(
                title: Text("Suppliers", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.handshake),
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Purchases", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.calculator),
                onTap: () {


                },
              ),
              ExpansionTile(
                title: Text(
                  "Sales",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.point_of_sale_sharp, size: 28,),
                children: [
                  ListTile(
                    title: Text("Sales", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.cartShopping),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Quotations", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.format_quote_outlined),

                    onTap: () {


                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Returns",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.assignment_return_outlined, size: 28,),
                children: [
                  ListTile(
                    title: Text("Sales Return", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.compare_arrows_outlined),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Purchase Return", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.compare_arrows_outlined),
                    onTap: () {


                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Expenses",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.attach_money_outlined, size: 28,),
                children: [
                  ListTile(
                    title: Text("Expenses", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.moneyBill),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Categories", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.category),
                    onTap: () {

                    },
                  ),
                ],
              ),
              ListTile(
                title: Text("Reports", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.report),
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Warehouses", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.warehouse),
                onTap: () {


                },
              ),
              ListTile(
                title: Text("Inventory", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.inventory),
                onTap: () {


                },
              ),
              ListTile(
                title: Text("Settings", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.settings),
                onTap: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}