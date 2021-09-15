import 'package:flutter/material.dart';
import 'package:whatsapp_clone/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Enter your phone number",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              margin: EdgeInsets.only(left: 20 , top: 20, right: 20),
              child: Text("WhatsApp will send an SMS message to verify "
                  "your phone number.",
              style: TextStyle(
                fontSize: 15,
              ),
              ),
            ),

            SizedBox(
              height: 50,
            ),


            Container(
              margin: EdgeInsets.only(left: 20 , top: 20, right: 20),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                    // border: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    // enabledBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Enter your phone number"),
              ),
            ),

            SizedBox(
              height: 150,
            ),

            ButtonTheme(
              height: 40,
              minWidth: 150,
              child: RaisedButton(
                child: Text("NEXT",
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                focusColor: Colors.teal,
                highlightColor: Colors.yellow,
                color: Colors.teal,
                hoverColor: Colors.grey,
                elevation: 20,
                onPressed: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context){
                        return HomeScreen();
                      }
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
