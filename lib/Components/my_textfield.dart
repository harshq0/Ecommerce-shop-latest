import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  final void Function()? suffixIconTap;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.text,
    this.suffixIcon,
    this.suffixIconTap,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: suffixIconTap,
            child: suffixIcon,
          ),
          label: Text(text),
          labelStyle: GoogleFonts.outfit(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: const Color(0xff7a7a7a),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xffd6d6d6)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xffd6d6d6)),
          ),
        ),
      ),
    );
  }
}
