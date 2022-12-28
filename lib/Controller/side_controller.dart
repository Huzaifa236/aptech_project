

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideController extends GetxController{

  final TextEditingController SideAController = TextEditingController();
  final TextEditingController SideBController = TextEditingController();
  final TextEditingController SideCController = TextEditingController();
  final TextEditingController SideDController = TextEditingController();
  var sidea;
  var sideb;
  var sidec;
  var sided;
  var length;
  var  width;
  var area= "waiting to be calculated".obs;

  calculateheight(){
   if (SideAController.value != null||
       SideBController.value != null||
       SideCController.value != null||
       SideDController.value != null){
     sidea = SideAController.value ;
     sideb = SideBController.value;
     sidec = SideCController.value;
     sided = SideDController.value ;

     length =(sidea + sidec)/2 ;
     width = (sideb + sided)/2;

     area = (length * width);
     return area.toString();
   }else{
     Get.snackbar("Fields Empty", "Fill all Fields");
   }

   }

}