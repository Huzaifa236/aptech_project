import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomNavigationController extends GetxController{
  var selectedIndex = 0.obs;
  var textValue = 0.obs;

  void changeIndex (int index){
    selectedIndex.value = index;
  }

  void increaseValue (){
    textValue.value++;
  }

}