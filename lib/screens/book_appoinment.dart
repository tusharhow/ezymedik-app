import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../confirmation_widgets/appoinment_confirmation.dart';

class BookApoinment extends StatefulWidget {
  const BookApoinment({Key? key}) : super(key: key);

  @override
  State<BookApoinment> createState() => _BookApoinmentState();
}

String? _dropDownValue;

class _BookApoinmentState extends State<BookApoinment> {
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
            Container(
              alignment: Alignment.center,
              child: Text('Book an appointment',
                  style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.0340,
                      fontWeight: FontWeight.bold,
                      color: defaultColor)),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            SizedBox(
              width: _size.width * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Describe your symptoms',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: _size.height * 0.02,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.07,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Select date and time',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('October 2021',
                    style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26)),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
            ),
            Category(),
            CategoryTwo(),
            SizedBox(
              height: _size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Choose your hospital',
                    style: GoogleFonts.poppins(
                      fontSize: _size.height * 0.0340,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(
              height: _size.height * 0.02,
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
            SizedBox(height: _size.height * 0.05),
            ReusablePrimaryButton(
                childText: 'Book my appointment',
                buttonColor: Color(0xff18A0FB),
                textColor: Colors.white,
                onPressed: () {
                  push(context: context, widget: AppoinmentConfirmation());
                }),
            SizedBox(height: _size.height * 0.05),
          ],
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> dataList = ["10", "11", "12", "13", "14", "15"];
  List<String> dataList1 = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: _buildCategory(index),
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(int index) {
    return Column(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:
                selectedIndex == index ? Color(0xff18A0FB) : Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                dataList[index],
                style: GoogleFonts.poppins(
                    color:
                        selectedIndex == index ? Colors.white : Colors.black54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                dataList1[index],
                style: GoogleFonts.poppins(
                    color:
                        selectedIndex == index ? Colors.white : Colors.black54,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryTwo extends StatefulWidget {
  const CategoryTwo({Key? key}) : super(key: key);

  @override
  _CategoryTwoState createState() => _CategoryTwoState();
}

class _CategoryTwoState extends State<CategoryTwo> {
  List<String> dataList = [
    "1:00",
    "2:00",
    "3:00",
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: _buildCategory(index),
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(int index) {
    return Column(
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color:
                  selectedIndex == index ? Colors.transparent : Colors.black54,
            ),
            color:
                selectedIndex == index ? Color(0xff183DC1) : Colors.transparent,
          ),
          child: Center(
            child: Text(
              dataList[index],
              style: GoogleFonts.poppins(
                  color: selectedIndex == index ? Colors.white : Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
