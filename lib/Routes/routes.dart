import 'package:aptech_project/Screens/Auth/login_screen.dart';
import 'package:aptech_project/Screens/Auth/register_screen.dart';
import 'package:aptech_project/Screens/Home.dart';
import 'package:aptech_project/Screens/welcome.dart';
import 'package:get/get.dart';

class RoutesClass{
  static String welcome ="/";
  static String home ="/home";
  static String login ="/login";
  static String register ="/register";

  static String getWelcomeRoute()=> welcome;
  static String getHomeRoute()=> home;
  static String getLoginRoute()=> login;
  static String getRegisterRoute()=> register;


  static List<GetPage> routes=[
    GetPage(name: welcome, page: ()=>Welcome(),transition: Transition.rightToLeft),
    GetPage(name: home, page: ()=>HomeScreen(),transition: Transition.rightToLeft),
    GetPage(name: login, page: ()=>LoginScreen(),transition: Transition.rightToLeft),
    GetPage(name: register, page: ()=>RegisterScreen(),transition: Transition.rightToLeft),

  ];



}