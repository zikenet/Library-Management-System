import 'package:flutter/material.dart';
import 'package:library_management_system/components/password_input.dart';
import 'package:library_management_system/components/rounded_button.dart';
import 'package:library_management_system/screens/user_home_screen.dart';
import 'package:library_management_system/constants.dart';

void main() {
  runApp(Registeration());
}

class Registeration extends StatefulWidget {
  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  String dropdownValue = 'Student';

  Widget createDropDown() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.white),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Student', 'Admin/Teacher']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'USER REGISTERATION',
                  style: TextStyle(
                    fontFamily: 'SourceSans',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    createDropDown(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        onChanged: (value) {},
                        decoration:
                            kTextFieldDecoration.copyWith(hintText: 'Name'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        onChanged: (value) {},
                        keyboardType: TextInputType.number,
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'ID Number'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        onChanged: (value) {},
                        decoration:
                            kTextFieldDecoration.copyWith(hintText: 'Field'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Email Address'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: PasswordFormField(
                        controller: TextEditingController(),
                        hint: 'Password',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: PasswordFormField(
                        controller: TextEditingController(),
                        hint: 'Confirm Password',
                      ),
                    ),
                    RoundedButton(
                      title: 'REGISTER',
                      colour: Colors.lightBlueAccent,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
