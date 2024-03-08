import 'dart:math';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:women_safety_app/widgets/CustomCarouel.dart';
import 'package:women_safety_app/widgets/custom_appbar.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 // const HomeScreen({super.key});
 int qindex= 2;

 getRandomQuote() {
   Random random = Random();
  //qindex=random.nextInt(6);
   setState(() {
     qindex=random.nextInt(6);
   });
 }
 @override
  void initState() {
    getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
          CustomAppBar(
            quoteindex: qindex,
            onTap: getRandomQuote(),
          ),
          CustomCarouel(),
        ],
        ),
        )
        )
    );
  }
}