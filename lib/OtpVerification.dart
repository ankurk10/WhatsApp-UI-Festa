import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:whatsapp_clone/HomeScreen.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Enter your OTP",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 100,
              ),


                 OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 55,
                  fieldStyle: FieldStyle.box,
                  style: TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),


              SizedBox(
                height: 50,
              ),

              Text("Did not receive the OTP?",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text("Click here to send again",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),


              SizedBox(
                height: 150,
              ),

              ButtonTheme(
                height: 40,
                minWidth: 300,
                child: RaisedButton(
                  child: Text("CONTINUE",
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
      ),
    );
  }

  }
