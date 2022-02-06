import 'package:ezymedik_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindHospital extends StatefulWidget {
  FindHospital({Key? key}) : super(key: key);

  @override
  State<FindHospital> createState() => _FindHospitalState();
}

class _FindHospitalState extends State<FindHospital> {
  String? _dropDownValue;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/map.png',
                    width: _size.width,
                    height: _size.height / 1.7,
                    fit: BoxFit.cover),
                Positioned(
                  top: _size.height / 1.7 - _size.height / 2,
                  left: _size.width / 2 - _size.width / 2.40,
                  child: SizedBox(
                    width: _size.width / 1.2,
                    height: 55,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search here',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _size.height / 1.7 - _size.height / 3,
                  left: _size.width / 2 - _size.width / 8,
                  child: Image.asset(
                    'images/kalu2.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hospitals near me',
                  style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.025,
                    fontWeight: FontWeight.bold,
                    color: defaultColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height / 30,
            ),
            Container(
              height: 110,
              width: _size.width / 1.15,
              decoration: BoxDecoration(
                color: Color(0xff939393).withOpacity(0.10),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Saint James Hospital',
                    style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.025,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '12 Lekki Road, Lekki Gardens',
                    style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.018,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'choose your hospital',
                  style: GoogleFonts.poppins(
                    fontSize: _size.height * 0.025,
                    color: Colors.black,
                  ),
                ),
              ),
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
            SizedBox(
              height: _size.height / 20,
            ),
          ],
        ),
      ),
    );
  }
}
