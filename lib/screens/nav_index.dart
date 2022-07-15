// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:credit_clan/screens/borrow.dart';
import 'package:credit_clan/screens/home.dart';
import 'package:credit_clan/screens/more.dart';
import 'package:credit_clan/screens/save.dart';
import 'package:credit_clan/screens/spend.dart';
import 'package:credit_clan/utils/colors.dart';
import 'package:credit_clan/utils/iconss.dart';
import 'package:flutter/material.dart';

class AllNavs extends StatefulWidget {
  AllNavs({Key? key}) : super(key: key);

  @override
  State<AllNavs> createState() => _AllNavsState();
}

class _AllNavsState extends State<AllNavs> {
  int _selectedIndex = 0;
  List<Widget> pages = [Home(), Spend(), Save(), Borrow(), More()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: black,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        unselectedItemColor: Colors.grey.shade400,
        items: [
          BottomNavigationBarItem(icon: Icon(home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(spend), label: " Spend"),
          BottomNavigationBarItem(icon: Icon(save), label: "Save"),
          BottomNavigationBarItem(icon: Icon(borrow), label: "Borrow"),
          BottomNavigationBarItem(icon: Icon(more), label: "More")
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
      body: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: Duration(seconds: 3),
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}
