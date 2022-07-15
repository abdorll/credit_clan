// ignore_for_file: prefer_const_constructors

import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/constants.dart';
import 'package:credit_clan/utils/sizes.dart';
import 'package:credit_clan/widgets/button.dart';
import 'package:credit_clan/widgets/spacing.dart';
import 'package:credit_clan/widgets/textt.dart';
import 'package:flutter/material.dart';

class Alertt {
  static showAlert(
    BuildContext context,
    String message,
  ) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Image.asset(errorIcon),
                YMargin(40),
                TextOf(
                    message, size2, black, FontWeight.w500, TextAlign.center),
                YMargin(20),
                SizedBox(
                  child: Button(
                      'Close', Navigator.of(context).pop, true, pink3, pink2),
                )
              ]),
            ),
          );
        });
  }
}
