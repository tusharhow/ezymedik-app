import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:ezymedik_app/screens/book_appoinment.dart';
import 'package:flutter/material.dart';

import 'ambulance_request.dart';
import 'lab_results.dart';
import 'my_appoinments.dart';
import 'request_medication.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding + 10),
          child: Image.asset('images/menu.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: defaultPadding + 5),
            child: Image.asset('images/cal.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: _size.height * 0.05),
            Center(
              child: InkWell(
                onTap: () {
                  push(context: context, widget: MyAppoinment());
                },
                child: Container(
                  height: 150,
                  width: _size.width / 1.10,
                  decoration: BoxDecoration(
                      color: Color(0xff0697EF),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: defaultPadding, top: defaultPadding + 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Appointments',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'You have an upcoming\nappointment on Thursday,\n23rd January 2022.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: Image.asset('images/hum.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: _size.height * 0.03),
            Divider(
              color: Colors.grey,
              thickness: 1,
              endIndent: 80,
              indent: 80,
            ),
            SizedBox(height: _size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    push(context: context, widget: BookApoinment());
                  },
                  child: Container(
                    height: 180,
                    width: _size.width / 2.50,
                    decoration: BoxDecoration(
                        color: Color(0xff0697EF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                'Book',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Appointment',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: Image.asset('images/hum2.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: _size.width * 0.05),
                InkWell(
                  onTap: () {
                    push(context: context, widget: AmbulanceRequest());
                  },
                  child: Container(
                    height: 180,
                    width: _size.width / 2.50,
                    decoration: BoxDecoration(
                        color: Color(0xff0697EF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                'Ambulance',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Request',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: Image.asset('images/ambu.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: _size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    push(context: context, widget: RequestMedication());
                  },
                  child: Container(
                    height: 180,
                    width: _size.width / 2.50,
                    decoration: BoxDecoration(
                        color: Color(0xff0697EF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                'Request',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Medication',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: Image.asset('images/spoon.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: _size.width * 0.05),
                InkWell(
                  onTap: () {
                    push(context: context, widget: LabResults());
                  },
                  child: Container(
                    height: 180,
                    width: _size.width / 2.50,
                    decoration: BoxDecoration(
                        color: Color(0xff0697EF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                'Labratory',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Reports',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: Image.asset('images/tube.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: _size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
