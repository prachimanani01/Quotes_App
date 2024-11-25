import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 8),
      () => Navigator.pushReplacementNamed(context, Routes.homePage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(),
          Image.network(
              "https://i.pinimg.com/originals/c8/08/a1/c808a1be2da253620773a2c611ceb486.jpg"),
          const Spacer(),
          const LinearProgressIndicator(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
