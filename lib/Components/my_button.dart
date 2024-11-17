import 'package:ecommerce_shop/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color borderColor;
  final Color? textColor;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    this.color,
    this.borderColor = Colors.white,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: globalWidth,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: color,
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.outfit(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
