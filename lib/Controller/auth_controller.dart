import 'package:aptech_project/Model/user_model.dart';
import 'package:aptech_project/Screens/Auth/login_screen.dart';
import 'package:aptech_project/Screens/Home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Components/constants.dart';
import '../Routes/routes.dart';

class AuthController extends GetxController{
   var isLoading = false;
  var isPasswordHiddin = true.obs;
  var userlist = <UserModel> [];

  // register text editing controllers
  final TextEditingController RegisterEmailController = TextEditingController();
  final TextEditingController RegisterPasswordController = TextEditingController();
  final TextEditingController RegisterConfirmPasswordController = TextEditingController();

  // signin text editing controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> createAccount() async {
    try{
      final user = await _auth.createUserWithEmailAndPassword(
          email: RegisterEmailController.text.toLowerCase().trim(),
          password: RegisterPasswordController.text.trim());
      final firestore = FirebaseFirestore.instance;
      firestore.collection('users').doc(user.user!.uid).set(
          {"email": RegisterEmailController.text.trim(), "password": RegisterPasswordController.text.trim()});
      if (user != null) {
        Get.snackbar("Success", "Account created successfully");
        Get.toNamed(RoutesClass.getLoginRoute());
      } else {
        print('error');
      }
    }catch(error){
      Get.snackbar("Error", "$error");
    }


  }

  Future<void> loginUser() async {
    final user = await _auth.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    if (user != null) {
      // lets save user with shared prefrences

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("userID", user.user!.uid);
      print(user.user!.uid);
      Get.snackbar("Success", "Logged In Successfully");
      Get.toNamed(RoutesClass.getHomeRoute());
    } else {
      Get.snackbar("Fields Empty", "Fill all Fields");
    }
  }

  // Let's make a function for logout

  Future<void> logoutUser() async {
    await _auth.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.snackbar("Success", "Logged Out Successfully");
    Get.offAllNamed(RoutesClass.welcome);
  }
  Future<void> getUser() async{
    try{
      QuerySnapshot users = await FirebaseFirestore.instance.collection('users').orderBy('email').get();
      userlist.clear();
      for(var user in users.docs)
        {
           userlist.add(UserModel(user['email']));
        }
    }catch(e){
      Get.snackbar("Error", '${e.toString()}');
    }


  }
}