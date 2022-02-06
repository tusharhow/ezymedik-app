import 'package:ezymedik_app/components/reusable_form_registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

bool isClicked = false;

class _ProfileState extends State<Profile> {
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
              // SizedBox(
              //   height: _size.height * 0.1,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.poppins(
                        fontSize: _size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Image.asset('images/kalu.png'),
                  ],
                ),
              ),
              SizedBox(
                height: _size.height * 0.01,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    hintText: 'Abdul',
                    hintStyle: GoogleFonts.poppins(color: Colors.black54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  style: GoogleFonts.poppins(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: _size.height * 0.01,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    hintText: 'Raj',
                    hintStyle: GoogleFonts.poppins(color: Colors.black54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  style: GoogleFonts.poppins(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: _size.height * 0.01,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    hintText: '72984555458',
                    hintStyle: GoogleFonts.poppins(color: Colors.black54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  style: GoogleFonts.poppins(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: _size.height * 0.01,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    hintText: 'tush@gmail.com',
                    hintStyle: GoogleFonts.poppins(color: Colors.black54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  style: GoogleFonts.poppins(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: _size.height * 0.01,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintText: '**********',
                      hintStyle: GoogleFonts.poppins(color: Colors.black54),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black54,
                        ),
                      ),
                      suffixIcon: Icon(Icons.visibility_off)),
                  style: GoogleFonts.poppins(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: _size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/hand.png',
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Activate Biometric Login',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Switch(
                      activeColor: Colors.deepPurple,
                      value: isClicked,
                      onChanged: (value) {
                        setState(() {
                          isClicked = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _size.height * 0.02,
              ),
            ],
          ),
        ));
  }
}
