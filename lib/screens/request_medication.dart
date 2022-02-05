import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../confirmation_widgets/medication_confirmation.dart';

class RequestMedication extends StatelessWidget {
  const RequestMedication({Key? key}) : super(key: key);

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
            Image.asset('images/medi.png'),
            SizedBox(
              height: _size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Request Medication',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: defaultColor)),
                SizedBox(
                  width: 15,
                ),
                Image.asset('images/drug.png'),
              ],
            ),
            SizedBox(
              height: _size.height * 0.03,
            ),
            Container(
              alignment: Alignment.center,
              child: Text('list the drugs you would like',
                  style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.0270, color: Colors.black45)),
            ),
            SizedBox(
              height: _size.height * 0.03,
            ),
            SizedBox(
              width: _size.width * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Drug Name',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0220,
                    color: Colors.black45,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            SizedBox(
              width: _size.width * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Drug Name',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0220,
                    color: Colors.black45,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            SizedBox(
              width: _size.width * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Drug Name',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0220,
                    color: Colors.black45,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            SizedBox(
              width: _size.width * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Drug Name',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: _size.height * 0.0220,
                    color: Colors.black45,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.04,
            ),
            ReusablePrimaryButton(
                childText: 'Request',
                buttonColor: Color(0xff18A0FB),
                textColor: Colors.white,
                onPressed: () {
                  push(context: context, widget: MedicationConfirmation());
                }),
            SizedBox(height: _size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
