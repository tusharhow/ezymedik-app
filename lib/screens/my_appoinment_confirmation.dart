import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/screens/my_appoinment_confirmation_second.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MyAppoinMentConfirmation extends StatelessWidget {
  const MyAppoinMentConfirmation({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [
                Text(
                  'Your bill is',
                  style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.030,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: _size.width * 0.03,
                ),
                Text(
                  '15800.00',
                  style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.030,
                      fontWeight: FontWeight.bold,
                      color: defaultColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'NHIS-03-02-01\nDexamethasone',
                style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.030,
                    fontWeight: FontWeight.bold,
                    color: defaultColor),
              ),
            ),
          ),
          SizedBox(
            height: _size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    push(context: context, widget: MyAppoinmentConfirmationSecond());
                  },
                  child: Container(
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
                            'Yes, approve payment.',
                            style: GoogleFonts.poppins(
                                fontSize: _size.height * 0.025,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: _size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
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
                        // Image.asset(
                        //   'images/li.png',
                        //   color: Colors.white,
                        // ),
                        SizedBox(
                          height: _size.height * 0.03,
                        ),
                        Text(
                          'No.',
                          style: GoogleFonts.poppins(
                              fontSize: _size.height * 0.025,
                              color: Colors.black),
                        ),
                        Text(
                          'request correction',
                          style: GoogleFonts.poppins(
                              fontSize: _size.height * 0.020,
                              color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
