import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/Components/my_button.dart';
import 'package:ecommerce_shop/Components/my_textfield.dart';
import 'package:ecommerce_shop/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isSuffixIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: globalHeight / 2.4,
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
          const SizedBox(height: 20),
          Text(
            "Your adventure starts here—register now!",
            style: GoogleFonts.outfit(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 30),
          MyTextField(
            text: 'Email Address',
            suffixIcon: SizedBox(
              height: 10,
              width: 10,
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/mail.svg',
                  color: const Color(0xffc7c7c7),
                  height: 20,
                ),
              ),
            ),
          ),
          MyTextField(
            text: 'Password',
            obscureText: isSuffixIcon ? false : true,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isSuffixIcon = !isSuffixIcon;
                });
              },
              child: SizedBox(
                height: 10,
                width: 10,
                child: Center(
                  child: SvgPicture.asset(
                    (isSuffixIcon)
                        ? 'assets/svg/eye.svg'
                        : 'assets/svg/eye-closed.svg',
                    color: const Color(0xffc7c7c7),
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
          MyTextField(
            text: 'Confirm Password',
            obscureText: isSuffixIcon ? false : true,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isSuffixIcon = !isSuffixIcon;
                });
              },
              child: SizedBox(
                height: 10,
                width: 10,
                child: Center(
                  child: SvgPicture.asset(
                    (isSuffixIcon)
                        ? 'assets/svg/eye.svg'
                        : 'assets/svg/eye-closed.svg',
                    color: const Color(0xffc7c7c7),
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const MyButton(
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const LoginScreen(),
            //   ),
            // ),
            text: 'Register',
            color: Color(0xff3253EB),
            textColor: Colors.white,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: GoogleFonts.outfit(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7a7a7a),
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3253EB),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
