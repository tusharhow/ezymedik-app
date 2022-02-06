import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ViewHistory extends StatelessWidget {
  const ViewHistory({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'View History',
                  style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.0340,
                      fontWeight: FontWeight.bold,
                      color: defaultColor),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '03/02/2021',
                  style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0200,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              width: _size.width / 1.10,
              decoration: BoxDecoration(
                color: Color(0xff939393).withOpacity(0.40),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(255, 170, 170, 170).withOpacity(0.40),
                    width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Appointment',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.02,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Completed',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '02/02/2021',
                  style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0200,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              width: _size.width / 1.10,
              decoration: BoxDecoration(
                color: Color(0xff939393).withOpacity(0.40),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(255, 170, 170, 170).withOpacity(0.40),
                    width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lab Tests',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.02,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Completed',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '01/02/2021',
                  style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0200,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              width: _size.width / 1.10,
              decoration: BoxDecoration(
                color: Color(0xff939393).withOpacity(0.40),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(255, 170, 170, 170).withOpacity(0.40),
                    width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Appointment',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.02,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Completed',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.15,
            ),
            ReusablePrimaryButton(
                childText: 'Download ',
                buttonColor: Colors.blue,
                textColor: Colors.white,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
