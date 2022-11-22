import 'package:aptech_project/Components/size_config.dart';
import 'package:aptech_project/Controller/auth_controller.dart';
import 'package:aptech_project/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyDrawer extends StatefulWidget
{

  @override
  _MyDrawerState createState() => _MyDrawerState();
}



class _MyDrawerState extends State<MyDrawer>
{
  @override
  Widget build(BuildContext context) {
    AuthController controller = AuthController();
       return Scaffold(
         endDrawer: Drawer(
           child: ListView(
             children: [
               //drawer header
               Container(
                 // width: 5,
                 height: SizeConfig.screenHeight,
                 color: Colors.white,
                 child: DrawerHeader(
                   decoration: const BoxDecoration(

                   color: Color.fromRGBO(135, 205, 234,1),),
                   child: Row(
                     children: [
                       Icon(
                         Icons.person,
                         size: 40,
                         color: Colors.white,
                       ),

                       SizedBox(width: 16),

                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             "addd",
                             style: TextStyle(
                               fontSize: 16,
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           const SizedBox(height: 10,),
                           Text(
                             "ssfdsjs",
                             style: TextStyle(
                               fontSize: 12,
                               color: Colors.white,
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),

               //drawer body

               GestureDetector(
                 onTap: ()
                 {
                   // controller.logoutUser();
                   // Get.to(HomeScreen());
                 },
                 child: ListTile(
                   leading: Icon(Icons.logout, color: Colors.white,),
                   title: Text(
                     "Sign Out",
                     style: TextStyle(
                       fontSize: 16,
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),

             ],
           ),
         ),
       );
  }
}
