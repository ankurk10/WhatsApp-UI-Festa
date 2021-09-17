import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ChatList.dart';
import 'package:whatsapp_clone/model/ChatModel.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        child: Icon(Icons.chat),
      ),

      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index)=>ChatList(
          chatModel: dummyData[index],
        ),
      ),
    );
  }
}
