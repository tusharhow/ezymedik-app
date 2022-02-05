import 'package:flutter/material.dart';

import '../constants.dart';

class AppoinmentConfirmation extends StatelessWidget {
  const AppoinmentConfirmation({Key? key}) : super(key: key);

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
            SizedBox(
              height: _size.height * 0.05,
            ),
            Center(
              child: Container(
                height: _size.height * 0.7,
                width: _size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Center(child: Image.asset('images/hum3.png')),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Confirmation',
                            style: TextStyle(
                                fontSize: _size.height * 0.0340,
                                fontWeight: FontWeight.bold,
                                color: defaultColor)),
                      ),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Your appointment\nhas been booked',
                          style: TextStyle(
                            fontSize: _size.height * 0.0230,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: _size.height * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Booking ID:',
                                  style: TextStyle(
                                    fontSize: _size.height * 0.0260,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: _size.width * 0.02,
                                ),
                                Text(
                                  '#425413',
                                  style: TextStyle(
                                    fontSize: _size.height * 0.0260,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'January 23:',
                                  style: TextStyle(
                                    fontSize: _size.height * 0.0260,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: _size.width * 0.02,
                                ),
                                Text(
                                  '2:30 PM',
                                  style: TextStyle(
                                    fontSize: _size.height * 0.0260,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _size.height * 0.07,
                      ),
                      Divider(
                        indent: 70,
                        endIndent: 70,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Olive Hospital, Ikoyi, Lagos',
                          style: TextStyle(
                            fontSize: _size.height * 0.0230,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
