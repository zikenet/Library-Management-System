import 'package:flutter/material.dart';
import 'package:library_management_system/components/rounded_button.dart';
import 'package:library_management_system/constants.dart';

class AddBook extends StatefulWidget {
  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  int bookid = 0;

  String dropdownValue = 'Educational';

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
      items: <String>[
        'Educational',
        'Comic Book',
        'Historical Fiction',
        'Literary Fiction',
        'Science Fiction (Sci-Fi)',
      ].map<DropdownMenuItem<String>>((String value) {
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
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add Book',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        bookid = int.parse(value);
                      },
                      decoration: kTextFieldDecoration.copyWith(hintText: 'Id'),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      onChanged: (value) {
                        bookid = int.parse(value);
                      },
                      decoration:
                          kTextFieldDecoration.copyWith(hintText: 'Title'),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    createDropDown(),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      onChanged: (value) {
                        bookid = int.parse(value);
                      },
                      decoration:
                          kTextFieldDecoration.copyWith(hintText: 'No of Unit'),
                    ),
                    RoundedButton(
                      title: 'Add',
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
