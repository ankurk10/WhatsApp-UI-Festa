import 'package:flutter/material.dart';
import 'package:whatsapp_clone/LoginScreen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Welcome to WhatsApp",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 29,
                fontWeight: FontWeight.w600,
              ),
              ),
              
              SizedBox(
                height: MediaQuery.of(context).size.height/8,
              ),

              Image.asset("images/background.png"
              , color: Colors.greenAccent[700],
                height: 340,
                width: 340,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height/8,
              ),
              
              ButtonTheme(
                height: 40,
                minWidth: 300,
                child: ElevatedButton(
                  child: Text("AGREE AND CONTINUE",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF128C7E),
                    elevation: 20,
                  ),
                  onPressed: ()
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return LoginScreen();
                        }
                    ));
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );



  }
}
