import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:library_management_system/components/reusable_card.dart';
import 'package:library_management_system/screens/admin_home_screen.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'User Home',
            style: TextStyle(fontFamily: 'SourceSans', color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminHome()),
                          );
                        },
                        child: ReusableCard(
                          icon: FontAwesomeIcons.search,
                          title: 'Search',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        icon: FontAwesomeIcons.eye,
                        title: 'See my books',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        icon: FontAwesomeIcons.plus,
                        title: 'Re-issue books',
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        icon: FontAwesomeIcons.powerOff,
                        title: 'Log out',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        icon: FontAwesomeIcons.upload,
                        title: 'About',
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        icon: FontAwesomeIcons.question,
                        title: 'Help',
                      ),
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
