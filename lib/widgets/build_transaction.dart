// ignore_for_file: must_be_immutable

import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/sizes.dart';
import 'package:credit_clan/widgets/iconss.dart';
import 'package:credit_clan/widgets/spacing.dart';
import 'package:credit_clan/widgets/textt.dart';
import 'package:flutter/material.dart';

class BuildTransactions extends StatelessWidget {
  BuildTransactions(
      {this.isCredit = false,
      required this.narration,
      required this.amount,
      Key? key})
      : super(key: key);
  bool isCredit;
  String? narration;
  String? amount;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      elevation: 10,
      shadowColor: ash,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            isCredit == false
                ? CircleAvatar(
                    radius: 20,
                    child: IconOf(
                      Icons.arrow_downward_rounded,
                      20,
                      white,
                    ),
                    backgroundColor: Colors.red,
                  )
                : CircleAvatar(
                    radius: 20,
                    child: IconOf(
                      Icons.arrow_upward_rounded,
                      20,
                      white,
                    ),
                    backgroundColor: Colors.green,
                  ),
            const XMargin(10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextOf(isCredit == true ? 'CREDIT' : 'DEBIT', sizea1, black,
                  FontWeight.w400, TextAlign.left),
              Row(
                children: [
                  TextOf(narration!, size1, black, FontWeight.w600,
                      TextAlign.left),
                ],
              ),
            ]),
            const Expanded(child: XMargin(10)),
            TextOf(
                '₦$amount',
                size2,
                isCredit == true ? Colors.green : Colors.red,
                FontWeight.w600,
                TextAlign.left),
          ],
        ),
      ),
    );
  }
}
