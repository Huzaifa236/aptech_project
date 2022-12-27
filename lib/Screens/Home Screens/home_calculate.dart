import 'package:aptech_project/Components/size_config.dart';
import 'package:flutter/material.dart';


import '../../Components/constants.dart';

class HomeCalculator extends StatelessWidget {
  const HomeCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight*0.040,),
          const Center(child: Text("Simple Calculation",style: TextStyle(fontSize: 30,color: kPurpleColor),)),
          SizedBox(height: SizeConfig.screenHeight*0.040,),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kPurpleColor,
                  Colors.white,
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            height: SizeConfig.screenHeight/4,
            width: SizeConfig.screenWidth*0.500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add_box,color: Colors.white,),
                Text("Start",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                ),
                ),
                Text("Measurement",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
