// ignore_for_file: must_be_immutable

import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/sizes.dart';
import 'package:credit_clan/widgets/textt.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
    this.text,
    this.action,
    this.enabled,
    this.dColor,
    this.lColor, {
    Key? key,
  }) : super(key: key);
  String text;
  bool enabled = true;
  Function action;
  Color dColor;
  Color lColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: enabled == true ? [dColor, lColor] : [grey, grey])),
        child: Center(
          child: TextOf(text, size1, white, FontWeight.w500, TextAlign.center),
        ),
      ),
      onTap: () {
        enabled == true ? action() : () {};
      },
    );
  }
}
