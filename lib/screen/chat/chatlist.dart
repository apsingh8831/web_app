
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webapp_clone/constant/const_data.dart';
import 'package:webapp_clone/screen/chat/sellerchat.dart';

import '../../Constant/customPoppinsText.dart';
import '../../constant/colors.dart';




class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);
  @override
  State<ChatList> createState() => _ChatListState();
}
class _ChatListState extends State<ChatList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: orangeColor,statusBarIconBrightness: Brightness.light),
        elevation: 2,
        leading: Icon(Icons.menu),
        title: Text ("Inbox"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Constdata.user.length,
                itemBuilder: (context,index){
                return InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Sellerchat("${Constdata.user[index]['name']}","${Constdata.user[index]['image']}")));
                 },
                 child: Container(
                   child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: Row(
                       children: [
                        CircleAvatar(
                             radius: 35,
                               child: Image.asset("${Constdata.user[index]['image']}",fit: BoxFit.fill,)),


                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CustomPoppinsText(text: "${Constdata.user[index]['name']}",fontWeight: FontWeight.w500,fontSize: 15,),
                               CustomPoppinsText(text: "${Constdata.user[index]['title']}",fontSize: 13,color: textColor,),
                             ],
                           ),
                         ),
                         Spacer(),
                         CustomPoppinsText(text:"${Constdata.user[index]['time']}",maxLine: 1,textOverflow: TextOverflow.ellipsis,),
                       ],
                     ),
                   ),
                 ),
               );
            })
          ],
        ),
      ),
    );
  }
}
