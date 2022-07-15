// ignore_for_file: prefer_const_constructors

import 'package:credit_clan/screens/nav_index.dart';
import 'package:credit_clan/utils/constants.dart';
import 'package:credit_clan/widgets/spacing.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => AllNavs()), (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 180,
          width: 180,
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(logo),
                YMargin(10),
                Image.asset(creditClan)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
