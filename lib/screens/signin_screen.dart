import 'package:flutter/material.dart';
import 'package:library_management_system/components/password_input.dart';
import 'package:library_management_system/components/rounded_button.dart';
import 'package:library_management_system/screens/registration_screen.dart';
import 'package:library_management_system/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String usrName;
  String password;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: AssetImage('assets/images/library.jpg'),
        ),
        Text(
          '"When in doubt go to the library."',
          style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              fontSize: 12.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25.0,
          width: 150.0,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  usrName = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Your User Name'),
              ),
              SizedBox(
                height: 20.0,
              ),
              PasswordFormField(
                controller: TextEditingController(),
                hint: 'Enter Your Password',
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                title: 'Log In',
                colour: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registeration()),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
