import 'package:aptech_project/Components/constants.dart';
import 'package:aptech_project/Components/size_config.dart';
import 'package:flutter/material.dart';
import '../Controller/auth_controller.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                // showDialog(
                //     context: context,
                //     builder: (builder){
                //       return CircularProgressIndicator(color: kPurpleColor,);
                //     });
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
     ) ,
    );
  }
}
