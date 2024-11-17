import 'package:ecommerce_shop/Authentication/inital_screen.dart';
import 'package:ecommerce_shop/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    globalHeight = MediaQuery.sizeOf(context).height;
    globalWidth = MediaQuery.sizeOf(context).width;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitalScreen(),
    );
  }
}
