import 'package:ezymedik_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabResults extends StatelessWidget {
  const LabResults({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            Center(
              child: Image.asset('images/tube.png'),
            ),
            SizedBox(height: defaultPadding * 2),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lab Results',
                style: GoogleFonts.poppins(
                  color: defaultColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: defaultPadding * 2),
            Center(
              child: Container(
                height: 125,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '20,January 2022',
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: _size.height / 40),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Your Covid results came\nback negative.',
                            style: GoogleFonts.poppins(
                                fontSize: _size.height * 0.0230,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: defaultPadding),
            Center(
              child: Container(
                height: 125,
                width: _size.width / 1.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black54,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '20,January 2022',
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: _size.height / 40),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Malaria Test was positive',
                            style: GoogleFonts.poppins(
                                fontSize: _size.height * 0.0230,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
