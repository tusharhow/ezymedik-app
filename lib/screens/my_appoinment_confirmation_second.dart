import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MyAppoinmentConfirmationSecond extends StatelessWidget {
  const MyAppoinmentConfirmationSecond({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'My appointment is over',
                style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.030,
                    fontWeight: FontWeight.bold,
                    color: defaultColor),
              ),
            ),
          ),
          SizedBox(
            height: _size.height * 0.08,
          ),
          Container(
            height: 130,
            width: _size.width / 1.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.blue,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/li.png'),
                  SizedBox(
                    height: _size.height * 0.01,
                  ),
                  Text(
                    'Yes, approve.',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.025, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: _size.height * 0.03,
          ),
          Container(
            height: 130,
            width: _size.width / 1.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.blue,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/li.png',
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: _size.height * 0.01,
                  ),
                  Text(
                    'Not yet.',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.025, color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
