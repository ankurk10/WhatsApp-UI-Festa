import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/ChatModel.dart';

class IndividualChatScreen extends StatefulWidget {
  const IndividualChatScreen({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualChatScreenState createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        titleSpacing: 10,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                //radius: 20,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.blueGrey,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        title: Column(
          children: [
            Text(widget.chatModel.name),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(
                      margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        maxLines: 5,
                        minLines: 1,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type a messagge",
                          contentPadding: EdgeInsets.all(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 2),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF128C7E),
                      radius: 25,
                      child: IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
