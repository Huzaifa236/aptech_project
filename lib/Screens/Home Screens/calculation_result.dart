import 'package:aptech_project/Controller/side_controller.dart';
import 'package:flutter/material.dart';


class CalculationResult extends StatelessWidget {
  const CalculationResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SideController sideController= SideController();
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("${sideController.calculateheight().area}"),
        ),
      ),
    );
  }
}
