import 'package:aptech_project/Screens/Auth/login_screen.dart';
import 'package:aptech_project/Screens/Auth/register_screen.dart';
import 'package:aptech_project/Screens/Home%20Screens/calculate_sides.dart';
import 'package:aptech_project/Screens/Home%20Screens/home_calculate.dart';
import 'package:aptech_project/Screens/Home%20Screens/profile.dart';
import 'package:aptech_project/Screens/Home.dart';
import 'package:aptech_project/Screens/welcome.dart';
import 'package:get/get.dart';

class RoutesClass{
  static String welcome ="/";
  static String home ="/home";
  static String login ="/login";
  static String register ="/register";
  static String hcalculator ="/hcalculator";
  static String connectdevice ="/connectdevice";
  static String profile ="/profile";


  static String getWelcomeRoute()=> welcome;
  static String getHomeRoute()=> home;
  static String getLoginRoute()=> login;
  static String getRegisterRoute()=> register;
  static String getHCalculatorRoute()=> hcalculator;
  static String getConnectDeviceRoute()=> connectdevice;
  static String getProfileRoute()=> profile;

  static List<GetPage> routes=[
    GetPage(name: welcome, page: ()=>const Welcome(),transition: Transition.rightToLeft),
    GetPage(name: home, page: ()=>const HomeScreen(),transition: Transition.rightToLeft),
    GetPage(name: login, page: ()=>LoginScreen(),transition: Transition.rightToLeft),
    GetPage(name: register, page: ()=>const RegisterScreen(),transition: Transition.rightToLeft),
    GetPage(name: hcalculator, page: ()=>const HomeCalculator(),transition: Transition.rightToLeft),
    GetPage(name: connectdevice, page: ()=>const Calculation(),transition: Transition.rightToLeft),
    GetPage(name: profile, page: ()=>const Profile(),transition: Transition.rightToLeft),



  ];



}