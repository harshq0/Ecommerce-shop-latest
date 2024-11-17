import 'package:ecommerce_shop/constant.dart';
import 'package:flutter/material.dart';

class MobileNumberScreen extends StatelessWidget {
  const MobileNumberScreen({super.key});

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
        ],
      ),
    );
  }
}
