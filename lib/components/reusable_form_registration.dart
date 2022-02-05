import 'package:flutter/material.dart';

class ReusableTextFormFieldRegistration extends StatelessWidget {
  const ReusableTextFormFieldRegistration({
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
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black54),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}
