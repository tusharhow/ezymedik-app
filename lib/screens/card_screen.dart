import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../constants.dart';

class CardScreen extends StatelessWidget {
  CardScreen({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.black,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.dark, // For iOS (dark icons)
          ),
          elevation: 0,
          title: Text(
            'Welcome, Abdul',
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: defaultPadding + 10),
            child: InkWell(
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Image.asset('images/menu.png')),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: _size.height * 0.05,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            height: 620.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: _size.height * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Add your card',
                                          style: GoogleFonts.poppins(
                                            fontSize: _size.height * 0.03,
                                            color: defaultColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.black,
                                            size: _size.height * 0.03,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'this card will be used to pay your bills',
                                      style: GoogleFonts.poppins(
                                        fontSize: _size.height * 0.02,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.04,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Card Holder Name',
                                      style: GoogleFonts.poppins(
                                        fontSize: _size.height * 0.02,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: _size.width * 0.8,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          // labelText: 'label',
                                          // labelStyle: GoogleFonts.poppins(
                                          //   color: Colors.black,
                                          //   fontSize: 15,
                                          // ),
                                          hintText: 'Addul Kareem',
                                          hintStyle: GoogleFonts.poppins(
                                              color: Colors.black54),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.02,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Card Number',
                                      style: GoogleFonts.poppins(
                                        fontSize: _size.height * 0.02,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: _size.width * 0.8,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          // labelText: 'label',
                                          // labelStyle: GoogleFonts.poppins(
                                          //   color: Colors.black,
                                          //   fontSize: 15,
                                          // ),
                                          hintText: '0000  0000  0000  00',
                                          hintStyle: GoogleFonts.poppins(
                                              color: Colors.black54),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: defaultPadding),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Expiry Date:',
                                              style: GoogleFonts.poppins(
                                                fontSize: _size.height * 0.02,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: defaultPadding),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                              width: _size.width * 0.3,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  // labelText: 'label',
                                                  // labelStyle: GoogleFonts.poppins(
                                                  //   color: Colors.black,
                                                  //   fontSize: 15,
                                                  // ),
                                                  hintText: '00/00',
                                                  hintStyle:
                                                      GoogleFonts.poppins(
                                                          color:
                                                              Colors.black54),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: defaultPadding),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'CVV',
                                              style: GoogleFonts.poppins(
                                                fontSize: _size.height * 0.02,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: defaultPadding),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                              width: _size.width * 0.3,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  // labelText: 'label',
                                                  // labelStyle: GoogleFonts.poppins(
                                                  //   color: Colors.black,
                                                  //   fontSize: 15,
                                                  // ),
                                                  hintText: '000',
                                                  hintStyle:
                                                      GoogleFonts.poppins(
                                                          color:
                                                              Colors.black54),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: _size.height * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Saved Cards',
                                        style: GoogleFonts.poppins(
                                          fontSize: _size.height * 0.02,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: _size.width / 1.20,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            children: [
                                              Image.asset('images/crd.png'),
                                              SizedBox(
                                                width: _size.width * 0.05,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '*******786',
                                                    style: GoogleFonts.poppins(
                                                      fontSize:
                                                          _size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Mastercard',
                                                    style: GoogleFonts.poppins(
                                                      fontSize:
                                                          _size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Stack(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 5,
                                                    right: 5,
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black54,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        border: Border.all(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.04,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 60,
                                    width: _size.width * 0.7,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        ' Save',
                                        style: GoogleFonts.poppins(
                                          fontSize: _size.height * 0.02,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.02,
                                ),
                              ],
                            ));
                      });
                },
                child: Container(
                  height: 55,
                  width: _size.width / 1.10,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('Add Card',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
