// ignore_for_file: prefer_const_constructors
import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/iconss.dart';
import 'package:credit_clan/utils/sizes.dart';
import 'package:credit_clan/widgets/build_transaction.dart';
import 'package:credit_clan/widgets/iconss.dart';
import 'package:credit_clan/widgets/spacing.dart';
import 'package:credit_clan/widgets/textt.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int value = 1;
  bool hideBal = false;
  int selected = 1;
  Widget content = Container(
    decoration: BoxDecoration(
        color: orange1,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: white)),
    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 14),
    child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextOf('Complete Account setup', size2, black, FontWeight.w700,
              TextAlign.left),
          IconOf(Icons.arrow_forward_ios_rounded, sizea1, grey)
        ]),
        YMargin(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextOf('Finish setting up your KYC to transfer or withraw',
                  size1, black, FontWeight.w400, TextAlign.left),
            )
          ],
        )
      ],
    ),
  );

  int selected2 = 1;
  Widget? content2;
  Widget buildTab2Items(
    icon,
    iconColor,
    circleColor,
    backgroundColor,
    toptxt,
    midtxt,
    midtxtColor,
    lowtxt,
    lowtxtColor,
  ) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: white.withOpacity(0)),
                      borderRadius: BorderRadius.circular(30),
                      color: circleColor,
                    ),
                    child: Center(
                      child: IconOf(icon, 22, iconColor),
                    )),
              ),
              XMargin(10),
              TextOf(toptxt, size3, black, FontWeight.w700, TextAlign.left)
            ],
          ),
          YMargin(10),
          Row(
            children: [
              Expanded(
                child: TextOf(
                    midtxt, size1, orange4, FontWeight.w700, TextAlign.left),
              ),
            ],
          ),
          YMargin(40),
          Row(
            children: [
              TextOf(
                  lowtxt, size1, lowtxtColor, FontWeight.w800, TextAlign.left),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tab2Items = [
      buildTab2Items(borrow, orange3, orange2, orange1, 'Borrow',
          'Loan application acceped', orange4, 'View offer', orange5),
      buildTab2Items(save, green3, green2, green1, 'Save',
          'Earn up to 15.5% per annum', green4, 'Start', green5),
      buildTab2Items(spend, pink3, pink2, pink1, 'Spend',
          'Send money or pay bills easily', pink4, 'View offer', orange5),
      buildTab2Items(invest, blue3, blue2, blue1, 'Invest',
          'Let your money earn good returns', blue4, 'View offer', orange5),
    ];
    List<Widget> transactions = [
      BuildTransactions(
        isCredit: true,
        narration: 'USSD Credit transfer',
        amount: '250,000',
      ),
      YMargin(5),
      BuildTransactions(
        isCredit: false,
        narration: 'Bill payment',
        amount: '10,000',
      )
    ];
    return Scaffold(
      backgroundColor: ash,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextOf('Hi Alex', size3, black, FontWeight.w900,
                        TextAlign.left),
                    Row(
                      children: [
                        IconOf(Icons.notifications, size4, black),
                        XMargin(size1),
                        IconOf(Icons.person, size4, black)
                      ],
                    )
                  ],
                ),
                YMargin(size2),
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: white),
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextOf('Good morning', 13, grey, FontWeight.w600,
                                  TextAlign.left),
                              XMargin(5),
                              IconOf(Icons.cloud, size2, black),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    hideBal = !hideBal;
                                  });
                                },
                                child: SizedBox(
                                  height: 25,
                                  width: 90,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: white),
                                        color:
                                            hideBal == true ? pink2 : green2),
                                    child: Center(
                                      child: TextOf(
                                          hideBal == false
                                              ? 'Hide balance'
                                              : 'Show balance',
                                          13,
                                          black,
                                          FontWeight.w400,
                                          TextAlign.left),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      YMargin(10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextOf(
                                  hideBal == false
                                      ? 'ACCOUNT BALANCE'
                                      : 'PREMIER SAVINGS',
                                  sizea1,
                                  grey,
                                  FontWeight.w600,
                                  TextAlign.left),
                              TextOf(
                                  hideBal == false
                                      ? '₦750,850.00'
                                      : '1398718250',
                                  size5,
                                  black,
                                  FontWeight.w700,
                                  TextAlign.left),
                            ],
                          ),
                        ],
                      ),
                      YMargin(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildTab1(
                              'Transfer',
                              1,
                              buildTab1Info(
                                  'Complete Account setup',
                                  'Finish setting up your KYC to transfer or withraw',
                                  orange1)),
                          buildTab1(
                              'Add money',
                              2,
                              buildTab1Info(
                                  'Finish Account setup',
                                  'Please complete your KYC to transfer or withraw',
                                  blue1))
                        ],
                      ),
                      YMargin(10),
                      content
                    ],
                  ),
                ),
                YMargin(10),
                Row(
                  children: [
                    buildTab2(
                        'Quick actions',
                        1,
                        GridView.count(
                          shrinkWrap: true,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 0.84,
                          crossAxisCount: 2,
                          children: tab2Items,
                        )),
                    XMargin(10),
                    buildTab2(
                      'Transactions',
                      2,
                      Column(
                        children: transactions,
                      ),
                    ),
                    YMargin(10),
                  ],
                ),
                YMargin(10),
                content2 ??
                    GridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.84,
                      crossAxisCount: 2,
                      children: tab2Items,
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildTab1(text, current, body) {
    selected;

    return InkWell(
      onTap: () {
        setState(() {
          selected = current;
          content = body;
        });
      },
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: white),
                color: selected == current ? black : ash),
            child: Center(
              child: TextOf(text, 13, selected == current ? white : grey,
                  FontWeight.w700, TextAlign.left),
            ),
          ),
        ),
      ),
    );
  }

  buildTab2(text, current, body) {
    selected;
    current;
    return InkWell(
      onTap: () {
        setState(() {
          selected2 = current;
          content2 = body;
        });
      },
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: white.withOpacity(0)),
                color: selected2 == current ? white : ash),
            child: Center(
              child: TextOf(text, 13, selected2 == current ? black : grey,
                  FontWeight.w700, TextAlign.left),
            ),
          ),
        ),
      ),
    );
  }

  buildTab1Info(title, subtitle, color) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: white)),
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 14),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextOf(title, size2, black, FontWeight.w700, TextAlign.left),
            IconOf(Icons.arrow_forward_ios_rounded, sizea1, grey)
          ]),
          YMargin(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: TextOf(
                    subtitle, size1, black, FontWeight.w400, TextAlign.left),
              )
            ],
          )
        ],
      ),
    );
  }
}
//
