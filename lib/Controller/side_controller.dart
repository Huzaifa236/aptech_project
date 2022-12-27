

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideController extends GetxController{
  final TextEditingController SideAController = TextEditingController();
  final TextEditingController SideBController = TextEditingController();
  final TextEditingController SideCController = TextEditingController();
  final TextEditingController SideDController = TextEditingController();
  late double sidea;
  late double sideb;
  late double sidec;
  late double sided;
  late double length;
  late double width;
  var area= 0.obs;


  calculateheight(){

   if (SideAController != TextEditingValue.empty||
       SideBController != TextEditingValue.empty||
       SideCController != TextEditingValue.empty||
       SideDController != TextEditingValue.empty){
     sidea = SideAController.value as double;
     sideb = SideBController.value as double;
     sidec = SideCController.value as double;
     sided = SideDController.value as double;

     length =(sidea + sidec/2) ;
     width = (sideb + sided /2);

     area = (length * width) as RxInt;
   }else{
     Get.snackbar("Fields Empty", "Fill all Fields");
   }

   }
}