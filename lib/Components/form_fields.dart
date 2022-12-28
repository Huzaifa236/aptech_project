import 'package:aptech_project/Controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: kPurpleColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kPurpleColor,
              width: 3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
class ReusablePasswordTextField extends StatelessWidget {
  const ReusablePasswordTextField({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    AuthController authController=AuthController();
    return Obx(() => Padding(
      padding:  EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: authController.isPasswordHiddin.value,
        controller: controller,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(color: kPurpleColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: kPurpleColor,
                width: 3,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            suffix:InkWell(
              child: Icon(authController.isPasswordHiddin.value
                  ?Icons.visibility
                  :Icons.visibility_off,
                  color: Colors.black,
                  size: 20),
              onTap: (){
               authController.isPasswordHiddin.value =!authController.isPasswordHiddin.value;
              },
            )
        ),
      ),
    ));
  }
}
