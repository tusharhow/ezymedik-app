import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class HospitalSearchPage extends StatelessWidget {
  const HospitalSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF4F7FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F7FF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/hoss.png'),
          SizedBox(height: _size.height * 0.08),
          Container(
            height: 420,
            width: _size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                SizedBox(height: _size.height * 0.02),
                Container(
                  height: 5,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(height: _size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Saint James Hospital',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.030,
                        fontWeight: FontWeight.bold,
                        color: defaultColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '22 Ozumba Mbadiwe Avenue, Ikoyi',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.025,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 2,
                      width: _size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Open Time: 7AM - 6AM',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.020,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Ambulance Service: Yes',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.020,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone: 018596358',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.020,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'NHIS Provider: Yes',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.020,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.04),
                ReusablePrimaryButton(
                    childText: ' Book Appointment',
                    buttonColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {}),
                SizedBox(height: _size.height * 0.02),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
