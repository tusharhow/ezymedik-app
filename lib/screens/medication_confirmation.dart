import 'package:flutter/material.dart';

import '../constants.dart';

class MedicationConfirmation extends StatelessWidget {
  const MedicationConfirmation({Key? key}) : super(key: key);

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
                      Center(
                          child: Image.asset(
                        'images/drug2.png',
                        // height: 170,
                        // width: 170,
                      )),
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
                          'Your drugs will be\ndelivered to your\nregistered address\nwithin 24 hours',
                          style: TextStyle(
                            fontSize: _size.height * 0.0220,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20 * 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Change address (cost N500)',
                          style: TextStyle(
                            fontSize: _size.height * 0.0230,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      Divider(
                        indent: 70,
                        endIndent: 70,
                        thickness: 1,
                      )
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
