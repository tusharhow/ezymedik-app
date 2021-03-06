import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusablePrimaryButton extends StatelessWidget {
  ReusablePrimaryButton(
      {required this.childText,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed});

  final String childText;
  final Color buttonColor;
  final Function onPressed;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 1.35,
        height: 55,
        color: buttonColor,
        child: Text(
          childText,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 16.0, color: textColor),
        ),
        onPressed: onPressed as void Function(),
      ),
    );
  }
}
