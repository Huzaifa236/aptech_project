import 'package:aptech_project/Components/size_config.dart';
import 'package:aptech_project/Screens/Auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Components/buttons.dart';
import '../../Components/constants.dart';
import '../../Components/form_fields.dart';
import '../../Controller/auth_controller.dart';
import '../../Routes/routes.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {

   LoginScreen({Key? key}) : super(key: key);
   AuthController authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight*0.05,
              ),
              Container(
                height: SizeConfig.screenHeight*0.10,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png')
                  )
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.010
              ),
              Column(
                children:const [
                  Text("Hello Again!",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                  ),
                  Text("Welcome back you've \n       been missed",style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.10,
              ),
              ReusableTextField(
                labelText: 'Email',
                controller: authController.loginEmailController,
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.010,
              ),
              ReusableTextField(
                labelText: 'Password',
                controller: authController.loginPasswordController,
              ),
              // SizedBox(
              //   height: SizeConfig.screenHeight*0.010,
              // ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("You want to  recover your password",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: NormalButton(text: "Login",
                      press: (){
                        // showDialog(
                        //     context: context, builder: (builder){
                        //   return Center(child: CircularProgressIndicator(color: kPurpleColor,));
                        // });
                          authController.loginUser();
                      }
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.10,
              ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   height: 2,
                   width: 100,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(5),
                   ),
                 ),
               ),
               const Text("Or Continue With"),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   height: 2,
                   width: 100,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(5),
                   ),
                 ),
               ),
             ],
           ),
              SizedBox(height: SizeConfig.screenHeight*0.010,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: kPurpleColor,
                          width: 2,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: const Center(
                         child: FaIcon(
                           FontAwesomeIcons.google,
                           size: 20,
                         ),
                       ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.050),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPurpleColor,
                          width: 2,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight*0.050,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a Member ? "),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RoutesClass.getRegisterRoute());
                    },
                    child: const Text("Register now",style: TextStyle(
                      color: kPurpleColor,

                    ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
