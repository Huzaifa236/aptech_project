import 'package:aptech_project/Components/constants.dart';
import 'package:aptech_project/Components/size_config.dart';
import 'package:aptech_project/Controller/bottom_navigation_controller.dart';
import 'package:aptech_project/Screens/Home%20Screens/calculate_sides.dart';
import 'package:aptech_project/Screens/Home%20Screens/home_calculate.dart';
import 'package:aptech_project/Screens/Home%20Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import '../Controller/auth_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeCalculator(),
      Calculation(),
      Profile(),
    ];

    BottomNavigationController bottomnavigationcontroller = Get.put(BottomNavigationController());
    AuthController controller = AuthController();
    var _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _key,
      endDrawer: Drawer(
        backgroundColor: kPurpleLightColor,
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.20),
            GestureDetector(
              onTap: ()
              {

              },
              child: const ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPurpleColor,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: ()
              {

              },
              child: const ListTile(
                title: Text(
                  "Connect a device",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPurpleColor,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: ()
              {

              },
              child: const ListTile(
                title: Text(
                  "setting",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPurpleColor,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: ()
              {
               controller.logoutUser();
              },
              child: const ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPurpleColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight*0.40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("Privacy Policy",style: TextStyle(
                    color: kPurpleColor,
                  ),),

                  Text("Terms of Uses",style: TextStyle(
                    color: kPurpleColor,
                  ),)
                ],
              ),
            )

          ],
        ),
      ),
      extendBody: true,
      backgroundColor: Colors.white,
     appBar:AppBar(
       shadowColor: Colors.transparent,
       backgroundColor: Colors.white,
       leading: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           height: 40,
           width: 40,
           decoration: BoxDecoration(
             boxShadow: const <BoxShadow>[
               BoxShadow(
                   color: Colors.black54,
                   blurRadius: 15,
                   offset: Offset(-5, 5)
               )
             ],
             color: kPurpleColor,
             border: const Border(),
             borderRadius: BorderRadius.circular(10),
           ),
           child: IconButton(
             style: IconButton.styleFrom(
               backgroundColor: kPurpleColor,
             ),
             onPressed: (){
             },
             icon: const Icon(Icons.list_outlined,color: Colors.white),
           ),
         ),
       ),
        flexibleSpace: SafeArea(child: Image(image: const AssetImage('assets/images/logo.png'),width: SizeConfig.screenWidth*0.15)),
       actions: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 40,
             width: 40,
             decoration: BoxDecoration(
               boxShadow: <BoxShadow>[
                 BoxShadow(
                     color: Colors.black54,
                     blurRadius: 15,
                     offset: Offset(-5, 5)
                 )
               ],
               color: kPurpleColor,
               border: Border(),
               borderRadius: BorderRadius.circular(10),
             ),
             child: IconButton(
               style: IconButton.styleFrom(
                 backgroundColor: kPurpleColor,
               ),
               onPressed: (){
                 _key.currentState!.openEndDrawer();
               },
               icon: Icon(Icons.list_outlined,color: Colors.white),
             ),
           ),
         ),
       ],
     ),
      body: Obx(() => IndexedStack(
        children: screens,
        index: bottomnavigationcontroller.selectedIndex.value,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kPurpleLightColor,
        color: kPurpleColor,
        animationDuration: Duration(milliseconds: 700),
        height: 70,
        onTap: (value){
          bottomnavigationcontroller.changeIndex(value);
        },
        items: [
          Icon(Icons.home_rounded,color: Colors.white,),
          Icon(Icons.connected_tv_rounded,color: Colors.white,),
          Icon(Icons.person_rounded,color: Colors.white,),
        ],
      ),
    );
  }
}
