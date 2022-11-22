import 'package:aptech_project/Controller/auth_controller.dart';
import 'package:aptech_project/Screens/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../Components/buttons.dart';
import '../../Components/constants.dart';
import '../../Components/form_fields.dart';
import '../../Components/size_config.dart';
import '../../Routes/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Container(
                height: SizeConfig.screenHeight * 0.10,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png')
                    )
                ),
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.010
              ),
              Column(
                children: const [
                  Text("Hello Again!", style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                  ),
                  Text("Welcome back you've \n       been missed",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.10,
              ),
              ReusableTextField(
                labelText: 'Email',
                controller: authController.RegisterEmailController,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.010,
              ),
              ReusablePasswordTextField(
                labelText: 'Password',
                controller: authController.RegisterPasswordController,
              ),
              ReusablePasswordTextField(
                labelText: 'Confirm Password',
                controller: authController.RegisterConfirmPasswordController,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: NormalButton(text: "Register",
                      press: () {
                        // showDialog(
                        //     context: context, builder: (builder){
                        //   return CircularProgressIndicator(color: kPurpleColor,);
                        // });
                      if(authController.RegisterEmailController.value != null|| authController.RegisterPasswordController.value != null ||
                          // ignore: unnecessary_null_comparison
                          authController.RegisterConfirmPasswordController.value!= null)
                        {
                          // ignore: unnecessary_null_comparison
                          if(authController.RegisterPasswordController.value == authController.RegisterConfirmPasswordController.value){
                            print(authController.RegisterEmailController.value );
                            authController.createAccount();
                          }
                          else{
                            Get.snackbar("Password Error", "Password Not Matched ",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: kPurpleLightColor,
                                barBlur:10);
                          }
                        }
                      else{
                        Get.snackbar("Fields Empty", "Fill All Fields",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: kPurpleLightColor,
                            barBlur:10);
                      }
                      }
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.10,
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
              SizedBox(height: SizeConfig.screenHeight * 0.010,),
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
                    SizedBox(width: SizeConfig.screenWidth * 0.050),
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
              SizedBox(height: SizeConfig.screenHeight * 0.050,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already a Member ? "),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RoutesClass.getLoginRoute());
                    },
                    child: const Text("Sign in now", style: TextStyle(
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