import 'package:aptech_project/Components/buttons.dart';
import 'package:aptech_project/Components/constants.dart';
import 'package:aptech_project/Components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Routes/routes.dart';
import 'Auth/register_screen.dart';
import 'Auth/login_screen.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Container(
                  height: SizeConfig.screenHeight*0.52,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kPurpleColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight:Radius.circular(40.0),
                    ),
                  ),
                ),),
                Positioned(child: Container(
                  height: SizeConfig.screenHeight*0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight:Radius.circular(40.0),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage('assets/images/welcome.png')
                    ),
                  ),
                ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.05,),
                const Text("Discover Measurement",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    const Text("with ",style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                    ),
                    ),
                    Container(
                        decoration:const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 5,
                              color: kPurpleColor,
                            )
                          )
                        ) ,
                        child: const Text("Laser Light",style:TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight*0.05,),
                const Text("A Laser Distance Meter send 0 pulse of laser light to the target\n"
                    "and measure the time it takes for the reflection to return",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NormalButton(text: "Register",
                    press: (){
                      Get.toNamed(RoutesClass.getRegisterRoute());
                    }
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.12),
                   BorderButton(text: "Login",
                   press: (){
                     Get.toNamed(RoutesClass.getLoginRoute());
                   }),
                  ],
                )
              ],

            )
          ],
        ),
      ),
    );
  }
}
