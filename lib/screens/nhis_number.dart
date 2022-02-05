import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:ezymedik_app/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'choose_hospital.dart';

class NHISnumber extends StatelessWidget {
  const NHISnumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: _size.height * 0.05),
              Center(
                child: Text('Enter your NHIS Number',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: defaultColor)),
              ),
              SizedBox(height: _size.height * 0.05),
              SizedBox(
                width: _size.width * 0.8,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'NHIS Number',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: _size.height * 0.02,
                      color: Colors.grey,
                    ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.20),
              ReusablePrimaryButton(
                  childText: 'Next',
                  buttonColor: Color(0xff18A0FB),
                  textColor: Colors.white,
                  onPressed: () {
                    push(context: context, widget: ChooseHospital());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
