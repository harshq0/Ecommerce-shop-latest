import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/Authentication/mobile_number.dart';
import 'package:ecommerce_shop/Components/my_button.dart';
import 'package:ecommerce_shop/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitalScreen extends StatelessWidget {
  const InitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: globalHeight / 1.8,
            width: globalWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: Color(0xff3253EB),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: SizedBox(
                height: 10,
                width: 10,
                child: Center(
                  child: Image.asset(
                    'assets/png/login.png',
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Your journey starts here—sign in to continue.',
            style: GoogleFonts.outfit(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 10),
          const Spacer(),
          MyButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            ),
            text: 'Login with  email',
            color: const Color(0xff3253EB),
            textColor: Colors.white,
          ),
          MyButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MobileNumberScreen(),
              ),
            ),
            text: 'Login via OTP',
            borderColor: const Color(0xff3253EB),
            textColor: const Color(0xff3253EB),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
