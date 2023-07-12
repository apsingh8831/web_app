
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../Constant/customPoppinsText.dart';
import '../../constant/colors.dart';
import '../../constant/resposive.dart';




class Sellerchat extends StatefulWidget {
   Sellerchat(this.name,this.imageurl,{super.key});

  String imageurl;
  String name;


  @override
  State<Sellerchat> createState() => _SellerchatState();
}

class _SellerchatState extends State<Sellerchat> {

  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }


    });
  }
  final TextEditingController _textEditingController = TextEditingController();



  List<String> _messages = [];


  void _handleSubmitted(String message) {
    _textEditingController.clear();
    setState(() {
      _messages.insert(0, message);
    });
  }


  Widget _buildTextComposer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(25)),


                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      child: IconButton(
                        icon: Icon(Icons.emoji_emotions_outlined,color: orangeColor,),
                        onPressed: () {
                          getImage();
                        }
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        controller: _textEditingController,
                        onSubmitted: _handleSubmitted,
                        decoration: InputDecoration.collapsed(hintText: 'Send a message'),
                      ),
                    ),
                    Row(
                      children: [
                        Container(

                          child: IconButton(
                              icon: Icon(Icons.mic,color: orangeColor,),
                              onPressed: () {

                              }
                          ),
                        ),
                        Container(

                          child: IconButton(
                              icon: Icon(Icons.camera_alt_outlined,color: orangeColor,),
                              onPressed: () {
                                getImage();
                              }
                          ),
                        ),
                      ],
                    )


                  ],
                ),
              ),
            ),
          ),
          CircleAvatar(
            radius: 25,
            child: IconButton(
              icon: Icon(Icons.send,color: orangeColor,),
              onPressed: () => _handleSubmitted(_textEditingController.text),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(String message, bool isMe) {
    final Container messageBox = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            isMe ? 'Me' : 'Other Person',
            style: TextStyle(fontSize: 10.0),
          ),
          SizedBox(height: 5.0),
          Material(
            color: isMe ? Color.fromARGB(255, 47, 182, 84) : Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
            elevation: 6.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Text(
                message,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
    if (isMe) {
      return messageBox;
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            child: Text('OP'),
          ),
        ),
        Expanded(child: messageBox),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        titleSpacing: 25,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 8),
          child: CircleAvatar(
            child: Image.asset(widget.imageurl),
          ),
        ),
        title:  CustomPoppinsText(text: widget.name,fontSize: 16,),
        actions: [
          Icon(Icons.video_call_sharp),
          SizedBox(width: ResponsiveRatio().width(context, 0.02),),
          Icon(Icons.call),
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: PopupMenuButton(
              itemBuilder: (context)=>[
                PopupMenuItem(
                // row has two child icon and text.
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("Delete Chat"),
                    ],
                  ),
                )
                )
              ],
            )
          )
        ],
      ),
      body:
      Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_, int index) => _buildMessage(_messages[index], true),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }
}
