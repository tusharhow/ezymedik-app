import 'package:ezymedik_app/components/navigate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'my_appoinment_second.dart';

class MyAppoinment extends StatelessWidget {
  const MyAppoinment({Key? key}) : super(key: key);

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
            Image.asset('images/dat.png'),
            SizedBox(
              height: _size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('My Appointments',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: defaultColor)),
              ),
            ),
            SizedBox(
              height: _size.height * 0.05,
            ),
            InkWell(
              onTap: () {
                push(context: context, widget: MyAppoinmentSecond());
              },
              child: Container(
                height: 120,
                width: _size.width / 1.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('images/chk.png'),
                      SizedBox(
                        width: _size.width * 0.08,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tue, 12, 2021',
                              style: GoogleFonts.poppins(
                                  fontSize: _size.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: defaultColor),
                            ),
                            SizedBox(
                              height: _size.height * 0.01,
                            ),
                            Text(
                              '2:00 pm',
                              style: GoogleFonts.poppins(
                                  fontSize: _size.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: defaultColor),
                            ),
                            SizedBox(
                              height: _size.height * 0.02,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Start Consultation',
                                  style: GoogleFonts.poppins(
                                    fontSize: _size.height * 0.02,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: _size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
