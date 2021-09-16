import 'package:flutter/material.dart';
import 'package:whatsapp_clone/HomeScreen.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:whatsapp_clone/OtpVerification.dart';
import 'package:whatsapp_clone/SignUp.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
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

              CountryCodePicker(
                initialSelection: 'IN',
              ),

              Container(
                margin: EdgeInsets.only(left: 20 , top: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                height: 50,
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
                          return OtpVerification();
                        }
                    ));
                  },
                ),
              ),

              SizedBox(
                height: 100,
              ),

              Container(
                margin: EdgeInsets.only(left: 20 , top: 20, right: 20),
                child: Text("New to WhatsApp?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),


              ButtonTheme(
                height: 40,
                minWidth: 150,
                child: RaisedButton(
                  child: Text("SIGNUP",
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
                          return SignUp();
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
