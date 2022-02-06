import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:ezymedik_app/screens/book_appoinment.dart';
import 'package:ezymedik_app/screens/find_hospital.dart';
import 'package:ezymedik_app/screens/profile.dart';
import 'package:ezymedik_app/screens/view_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ambulance_request.dart';
import 'lab_results.dart';
import 'my_appoinments.dart';
import 'request_medication.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Abdul\nKareem',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            accountEmail: Text('tush@gmail.com'),
          ),
          ListTile(
            leading: Icon(
              Icons.calendar_today,
              color: Colors.blue,
            ),
            title: Text(
              'My appointments',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {
              push(context: context, widget: MyAppoinment());
            },
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          ListTile(
            leading: Image.asset('images/ste.png'),
            title: Text(
              'Book appointment',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {
              push(context: context, widget: BookApoinment());
            },
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          ListTile(
            leading: Image.asset('images/me.png'),
            title: Text(
              'My Profile',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {
              push(context: context, widget: Profile());
            },
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          ListTile(
            leading: Image.asset('images/en.png'),
            title: Text(
              'Enrol for NHIS',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          ListTile(
            leading: Image.asset('images/am.png'),
            title: Text(
              'Find Hospitals',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {
              push(context: context, widget: FindHospital());
            },
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          ListTile(
            leading: Image.asset('images/his.png'),
            title: Text(
              'View History',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {
              push(context: context, widget: ViewHistory());
            },
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          ListTile(
            leading: Image.asset('images/lo.png'),
            title: Text(
              'Logout',
              style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: _size.height * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset('images/logo.png'),
          ),
          SizedBox(
            height: _size.height * 0.02,
          ),
        ]),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.black,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        elevation: 0,
        title: Text(
          'Welcome, Abdul',
          style: GoogleFonts.poppins(
              color: defaultColor, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding + 10),
          child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: Image.asset('images/menu.png')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: defaultPadding + 5),
            child: Image.asset('images/cal.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: _size.height * 0.05),
              MoreItems(
                imgSrc: 'images/hum.png',
                label: 'Appointments              ',
                labelSecond:
                    'You have an upcoming\nappointment on Thursday,\n23rd January 2022.',
              ),
              SizedBox(height: _size.height * 0.03),
              Divider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 80,
                indent: 80,
              ),
              SizedBox(height: _size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      push(context: context, widget: BookApoinment());
                    },
                    child: Container(
                      height: 170,
                      width: _size.width / 2.50,
                      decoration: BoxDecoration(
                          color: Color(0xff94CAFA),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Book',
                                      style: GoogleFonts.poppins(
                                          color: defaultColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Appointment',
                                      style: GoogleFonts.poppins(
                                          color: defaultColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: defaultPadding),
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/hum2.png')),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: _size.width * 0.06),
                  InkWell(
                    onTap: () {
                      push(context: context, widget: AmbulanceRequest());
                    },
                    child: Container(
                      height: 170,
                      width: _size.width / 2.50,
                      decoration: BoxDecoration(
                          color: Color(0xff94CAFA),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ambulance',
                                    style: GoogleFonts.poppins(
                                        color: defaultColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Request',
                                    style: GoogleFonts.poppins(
                                        color: defaultColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'images/ambu.png',
                              width: 135,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: _size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      push(context: context, widget: RequestMedication());
                    },
                    child: Container(
                      height: 170,
                      width: _size.width / 2.50,
                      decoration: BoxDecoration(
                          color: Color(0xff94CAFA),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Request',
                                    style: GoogleFonts.poppins(
                                        color: defaultColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Medication',
                                    style: GoogleFonts.poppins(
                                        color: defaultColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: defaultPadding * 3),
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Image.asset(
                                  'images/spoon.png',
                                  width: 130,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: _size.width * 0.06),
                  InkWell(
                    onTap: () {
                      push(context: context, widget: LabResults());
                    },
                    child: Container(
                      height: 170,
                      width: _size.width / 2.50,
                      decoration: BoxDecoration(
                          color: Color(0xff94CAFA),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Labratory',
                                    style: GoogleFonts.poppins(
                                        color: defaultColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Reports',
                                    style: GoogleFonts.poppins(
                                        color: defaultColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/tube.png')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: _size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

class MoreItems extends StatelessWidget {
  const MoreItems({
    Key? key,
    required this.imgSrc,
    required this.labelSecond,
    required this.label,
  }) : super(key: key);
  final imgSrc;
  final label;
  final labelSecond;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 130,
          width: MediaQuery.of(context).size.width / 1.17,
          decoration: BoxDecoration(
            color: Color(0xff0697EF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                right: defaultPadding, top: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  labelSecond,
                  style: GoogleFonts.poppins(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 20,
          child: Image(
            image: AssetImage(imgSrc),
            height: 160,
          ),
        ),
      ],
    );
  }
}
