import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:ezymedik_app/screens/set_hospital.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ChooseHospital extends StatefulWidget {
  const ChooseHospital({Key? key}) : super(key: key);

  @override
  State<ChooseHospital> createState() => _ChooseHospitalState();
}

String? _dropDownValue;

class _ChooseHospitalState extends State<ChooseHospital> {
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
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/hos.png'),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // alignment: Alignment.center,
                child: Text('My Preferred Hospital is',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: defaultColor)),
              ),
              Text('choose your hospital',
                  style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.0240, color: Colors.black54)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: _size.width * 0.9,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: DropdownButton(
                  hint: _dropDownValue == null
                      ? Text('Choose your hospital')
                      : Text(
                          _dropDownValue!,
                          style: GoogleFonts.poppins(color: Colors.blue),
                        ),
                  isExpanded: true,
                  iconSize: 30.0,
                  icon: Icon(Icons.keyboard_arrow_down),
                  style: GoogleFonts.poppins(color: Colors.blue),
                  items: ['Dhaka Medical', 'Two', 'Three'].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        _dropDownValue = val as String?;
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: _size.height * 0.20),
          ReusablePrimaryButton(
              childText: 'Next',
              buttonColor: Color(0xff18A0FB),
              textColor: Colors.white,
              onPressed: () {
                push(context: context, widget: SetHospital());
              }),
        ],
      ),
    );
  }
}
