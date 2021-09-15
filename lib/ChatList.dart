import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.person,
              ),
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
