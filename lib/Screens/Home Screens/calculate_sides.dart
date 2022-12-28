import 'package:aptech_project/Components/buttons.dart';
import 'package:aptech_project/Components/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/size_config.dart';
import '../../Controller/side_controller.dart';

class Calculation extends StatelessWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SideController sideController = SideController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight*0.020,
            ),
            const Text("Simple Calculation",style: TextStyle(fontSize: 30),),
            SizedBox(
              height: SizeConfig.screenHeight*0.020,
            ),
            ReusableTextField(
                labelText: "Side A",
                controller: sideController.SideAController),
            SizedBox(
              height: SizeConfig.screenHeight*0.010,
            ),
            ReusableTextField(
                labelText: "Side B",
                controller: sideController.SideBController),

            SizedBox(
              height: SizeConfig.screenHeight*0.010,
            ),
            ReusableTextField(
                labelText: "Side C",
                controller: sideController.SideCController),
            SizedBox(
              height: SizeConfig.screenHeight*0.010,
            ),
            ReusableTextField(
                labelText: "Side D",
                controller: sideController.SideDController),
            SizedBox(
              height: SizeConfig.screenHeight*0.010,
            ),
            BorderButton(text: "Calculate",press: (){
              sideController.calculateheight();
            }),

            SizedBox(
              height: SizeConfig.screenHeight*0.030,
            ),
            Obx(() => Text("${sideController.area}",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),

          ],
        ),
      ),
    );
  }
}
