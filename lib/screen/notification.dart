import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Constant/customPoppinsText.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),

          leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.close)),
        title: CustomPoppinsText(text: "Notifications",fontSize: 18,)
        // Text("Notifications",style: TextStyle(fontSize: 20),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPoppinsText(text: " No notifications",fontSize: 17,),
            CustomPoppinsText(text: "Check back here for updates!",fontSize: 15,fontWeight: FontWeight.w300,),

            SizedBox(height: 50,),
           Image.asset("asset/images/notification.png",height:150,)
          ],
        ),
      ),
    );
  }
}
