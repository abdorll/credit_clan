// ignore_for_file: prefer_const_constructors, must_be_immutable, sort_child_properties_last

import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/iconss.dart';
import 'package:credit_clan/widgets/iconss.dart';
import 'package:credit_clan/widgets/spacing.dart';
import 'package:credit_clan/widgets/textt.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: black,
        title: TextOf('More', 20, white, FontWeight.w500, TextAlign.center),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            MoreContents(
                borrow, 'Borrow', 'Loan application accepted', () {}, orange2),
            YMargin(10),
            MoreContents(
                save, 'Save', 'Earn up to 15.5% per annum', () {}, green2),
            YMargin(10),
            MoreContents(
                spend, 'Spend', 'Send money or pay bills easily', () {}, pink2),
            YMargin(10),
            MoreContents(invest, 'Invest', 'Let your money earn good returns',
                () {}, blue2),
            YMargin(10),
          ],
        ),
      ),
    );
  }
}

class MoreContents extends StatelessWidget {
  MoreContents(this.icon, this.title, this.subtitle, this.action, this.color,
      {Key? key})
      : super(key: key);
  IconData icon;
  Function action;
  String title;
  String subtitle;
  Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        action();
      },
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: EdgeInsets.all(7),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                child: IconOf(icon, 17, white),
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: color)),
              ),
              const XMargin(10),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextOf(title, 17, black, FontWeight.w600, TextAlign.start),
                  TextOf(subtitle, 12, black, FontWeight.w400, TextAlign.start),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
