import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'ambulance_confirmation.dart';

class AmbulanceRequest extends StatelessWidget {
  const AmbulanceRequest({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: _size.height * 0.02),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Emergency Ambulance\nRequest',
                    style: TextStyle(
                        fontSize: _size.height * 0.0340,
                        fontWeight: FontWeight.bold,
                        color: defaultColor)),
              ),
              SizedBox(height: _size.height * 0.06),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Enter your location',
                    style: TextStyle(
                      fontSize: _size.height * 0.0340,
                    )),
              ),
              SizedBox(height: _size.height * 0.02),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your location',
                  hintStyle: TextStyle(
                    fontSize: _size.height * 0.0220,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.07),
              ReusablePrimaryButton(
                  childText: 'Request',
                  buttonColor: Color(0xff18A0FB),
                  textColor: Colors.white,
                  onPressed: () {
                    push(context: context, widget: AmbulanceConfirmation());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
