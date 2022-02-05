import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusable_form_registration.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:ezymedik_app/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Enter your details below',
                      style: GoogleFonts.poppins(
                          fontSize: _size.height * 0.04,
                          fontWeight: FontWeight.bold,
                          color: defaultColor)),
                ),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: 'Abdul',
                    obscureText: false,
                    label: 'First Name'),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: 'Kareem',
                    obscureText: false,
                    label: 'Last Name'),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: 'Dhaka',
                    obscureText: false,
                    label: 'City'),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: 'tush@gmail.com',
                    obscureText: false,
                    label: 'Email'),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: '********',
                    obscureText: true,
                    label: 'Password'),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: '********',
                    obscureText: true,
                    label: 'Confirm Password'),
                SizedBox(height: defaultPadding),
                ReusableTextFormFieldRegistration(
                    size: _size,
                    hint: '+8801********',
                    obscureText: false,
                    label: 'Phone Number'),
                SizedBox(height: defaultPadding * 3),
                InkWell(
                  onTap: () {
                    push(context: context, widget: UserScreen());
                  },
                  child: Container(
                    width: _size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      color: defaultColor,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff18A0FB),
                          Color(0xff312DDE).withOpacity(0.80),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: defaultPadding * 2),
              ],
            ),
          ),
        ));
  }
}
