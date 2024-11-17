import 'package:ecommerce_shop/Authentication/register_screen.dart';
import 'package:ecommerce_shop/Components/my_button.dart';
import 'package:ecommerce_shop/Components/my_textfield.dart';
import 'package:ecommerce_shop/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSuffixIcon = false;
  bool isCheckBox = false;
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
            "Let's pick up where you left off",
            style: GoogleFonts.outfit(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const Spacer(),
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
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Remember',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff7a7a7a),
                  ),
                ),
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    value = !isCheckBox;
                  },
                  checkColor: const Color(0xff3253EB),
                  focusColor: const Color(0xff7a7a7a),
                  activeColor: const Color(0xff3253EB),
                  tristate: true,
                ),
                const Spacer(),
                Text(
                  'Forgot password ?',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff7a7a7a),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          MyButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            ),
            text: 'Login',
            color: const Color(0xff3253EB),
            textColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Color(0xffd6d6d6),
                    thickness: 0.5,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Or',
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff7a7a7a),
                  ),
                ),
                const SizedBox(width: 5),
                const Expanded(
                  child: Divider(
                    color: Color(0xffd6d6d6),
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            width: globalWidth / 2,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.3,
                color: const Color(0xffc7c7c7),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/png/google.png',
                    height: 30,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Login with Google',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
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
                    builder: (context) => const RegisterScreen(),
                  ),
                ),
                child: Text(
                  'Register now',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3253EB),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
