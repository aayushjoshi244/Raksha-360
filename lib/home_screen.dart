import 'dart:math';

import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/customCarouel.dart';
import 'package:women_safety_app/widgets/home_widgets/custom_appBar.dart';

import 'widgets/home_widgets/LivesSafe.dart';
import 'widgets/home_widgets/SafeHome/SafeHome.dart';
import 'widgets/home_widgets/emergency.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
  int qIndex = 5;

  getRandomQuote() {
    Random random = Random();
    setState(() {
      qIndex = random.nextInt(6);
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppbar(
                quotesIndex: qIndex,
                onTap: getRandomQuote(),
              ),
              Customcarouel(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Emergency",
                  style: 
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              Emergency(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Explore Live Safe",
                  style: 
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              LiveSafe(),
              SafeHome()
            ],
          ),
        ),
      ),
    );
  }
}
