// ignore_for_file: prefer_const_constructors

import 'package:credit_clan/helper/alert.dart';
import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/constants.dart';
import 'package:credit_clan/utils/sizes.dart';
import 'package:credit_clan/widgets/button.dart';
import 'package:credit_clan/widgets/spacing.dart';
import 'package:credit_clan/widgets/textt.dart';
import 'package:flutter/material.dart';

class Spend extends StatefulWidget {
  const Spend({Key? key}) : super(key: key);

  @override
  State<Spend> createState() => _SpendState();
}

class _SpendState extends State<Spend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: FittedBox(
              child: Image.asset(
                aspend,
              ),
            ),
          ),
          Column(
            children: [
              TextOf('Spend', size5, black, FontWeight.w800, TextAlign.center),
              YMargin(20),
              TextOf('Send money or pay bills easily', size3, black,
                  FontWeight.w500, TextAlign.center)
            ],
          ),
          YMargin(30),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button('Spend', () {
                  Alertt.showAlert(
                    context,
                    "You can't spend now",
                  );
                }, true, pink2, pink2)
              ],
            ),
          )
        ],
      )),
    );
  }
}
