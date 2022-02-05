import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusable_form.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:ezymedik_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../nav_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: defaultColor,
      appBar: AppBar(
        backgroundColor: defaultColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: defaultColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'images/logo.svg',
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(
              height: _size.height * 0.2,
            ),
            ReusableTextFormField(
              size: _size,
              hint: 'abdul@gmail.com',
              label: 'Email or Username',
              obscureText: false,
            ),
            SizedBox(
              height: _size.height * 0.03,
            ),
            ReusableTextFormField(
              size: _size,
              hint: '********',
              label: 'Password',
              obscureText: true,
            ),
            SizedBox(
              height: _size.height * 0.03,
            ),
            ReusableTextFormField(
              size: _size,
              hint: '********',
              label: 'Confirm Password',
              obscureText: true,
            ),
            SizedBox(
              height: _size.height * 0.08,
            ),
            ReusablePrimaryButton(
                childText: 'Login',
                buttonColor: Color(0xff18A0FB),
                textColor: Colors.white,
                onPressed: () {
                  push(context: context, widget: BottomNavigationScreen());
                }),
          ],
        ),
      ),
    );
  }
}
