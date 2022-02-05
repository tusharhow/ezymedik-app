import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nhis_number.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF4F7FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F7FF),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Are you an NHIS enrollee?',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: defaultColor)),
              ),
              SizedBox(height: defaultPadding),
              Center(
                child: InkWell(
                  onTap: () {
                    push(context: context, widget: NHISnumber());
                  },
                  child: Container(
                    height: 130,
                    width: _size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.blueAccent, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'images/nhis.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Yes, I am',
                                style: GoogleFonts.poppins(
                                    fontSize: _size.height * 0.0230,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: defaultPadding),
              Center(
                child: Container(
                  height: 130,
                  width: _size.width / 1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: Colors.black45,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'images/nhis.png',
                            height: 70,
                            width: 70,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text('No, I am not',
                              style: GoogleFonts.poppins(
                                  fontSize: _size.height * 0.0230,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
