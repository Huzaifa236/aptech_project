import 'package:flutter/material.dart';

class HomeCalculator extends StatelessWidget {
  const HomeCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text("HomeCalculator",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
