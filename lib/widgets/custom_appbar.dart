// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/quotes.dart';

class CustomAppBar extends StatelessWidget {
 // const CustomAppBar({super.key});
 Function? onTap;
 int? quoteindex;
 CustomAppBar({this.onTap, this.quoteindex});

  @override
  Widget build(BuildContext context) {
   // var sweetSayings2 = sweetSayings;
    return GestureDetector(
      onTap: () {
        onTap!();
      },
    child:Container(
      child: Text(
        sweetSayings[quoteindex!],
      style: TextStyle(fontSize: 22,
      ),
      ),
    ),
    );
  }
}