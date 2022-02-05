import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    Key? key,
    required Size size,
    required this.hint,
    required this.obscureText,
    required this.label,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final hint;
  final obscureText;
  final label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _size.width * 0.9,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 15,
          ),
          hintText: hint,
          hintStyle: GoogleFonts.poppins(color: Colors.white54),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        style: GoogleFonts.poppins(color: Colors.white),
      ),
    );
  }
}
