import 'package:aptech_project/Screens/Home.dart';
import 'package:aptech_project/Screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Routes/routes.dart';
import 'Screens/Auth/login_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  try {} catch (e) {
    print('Init failed' + e.toString());
  }
  runApp(const MyApp());
  _init();
}

_init() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final token = prefs.getString("userID");
  if (token != null) {
    print('Token: $token');
    Get.offAll(HomeScreen());
  } else {
    Get.offAll(Welcome());
    print("hello world");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesClass.getWelcomeRoute(),
      getPages: RoutesClass.routes,
    );
  }
}

