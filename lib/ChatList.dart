import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/ChatModel.dart';
import 'package:whatsapp_clone/IndividualChatScreen.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key key, this.chatModel})  : super(key: key);
 final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => IndividualChatScreen(chatModel: chatModel,)));

      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                Icons.account_circle,
                color: Colors.blueGrey,
                size: 60,
              ),
            ),
            title: Text(chatModel.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),

            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),

                Text(
                  chatModel.message,
                  style: TextStyle(
                    fontSize: 13
                  ),
                )

              ],
            ),
            trailing: Text(chatModel.time),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
