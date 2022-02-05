import 'package:ezymedik_app/components/navigate.dart';
import 'package:ezymedik_app/components/reusble_button.dart';
import 'package:ezymedik_app/screens/auth/login_screen.dart';
import 'package:ezymedik_app/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff183DC1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'images/logo.svg',
                height: 70,
                width: 70,
              ),
              SizedBox(
                height: 250,
              ),
              // Spacer(
              //   flex: 2,
              // ),
              // Container(
              //   height: 55,
              //   width: MediaQuery.of(context).size.width / 1.35,
              //   decoration: BoxDecoration(
              //     color: Color(0xff18A0FB),
              //     borderRadius: BorderRadius.circular(25),
              //   ),
              //   child: Center(
              //     child: Text(
              //       'Login',
              //       style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
              //     ),
              //   ),
              // ),
              ReusablePrimaryButton(
                  childText: 'Login',
                  buttonColor: Color(0xff18A0FB),
                  textColor: Colors.white,
                  onPressed: () {
                    push(context: context, widget: LoginScreen());
                  }),
              SizedBox(
                height: 20,
              ),
              // InkWell(
              //   onTap: () {
              //     push(context: context, widget: SignUpScreen());
              //   },
              //   child: Container(
              //     height: 55,
              //     width: MediaQuery.of(context).size.width / 1.35,
              //     decoration: BoxDecoration(
              //       color: Color(0xff18A0FB),
              //       borderRadius: BorderRadius.circular(25),
              //     ),
              //     child: Center(
              //       child: Text(
              //         'Register',
              //         style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
              //       ),
              //     ),
              //   ),
              // ),
              ReusablePrimaryButton(
                  childText: 'Register',
                  buttonColor: Color(0xff18A0FB),
                  textColor: Colors.white,
                  onPressed: () {
                    push(context: context, widget: SignUpScreen());
                  }),
              SizedBox(
                height: 20 * 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/hand.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Login with fingerprint or Face ID',
                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
