import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
      ),
      title: Text("Ankur",
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
            "Hello there",
            style: TextStyle(
              fontSize: 13
            ),
          )

        ],
      ),
      trailing: Text("12:20"),
    );
  }
}
