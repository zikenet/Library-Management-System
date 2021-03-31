import 'package:flutter/material.dart';
import 'package:library_management_system/components/reusable_card.dart';
import 'package:library_management_system/screens/add_book_screen.dart';
import 'package:library_management_system/screens/remove_book.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminHome extends StatelessWidget {
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
            'Admin/Teacher Home',
            style: TextStyle(fontFamily: 'SourceSans', color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddBook()),
                              );
                            },
                            child: ReusableCard(
                              icon: FontAwesomeIcons.plus,
                              title: 'Add book',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RemoveBook()));
                            },
                            child: ReusableCard(
                              icon: FontAwesomeIcons.minus,
                              title: 'Remove book',
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            icon: FontAwesomeIcons.upload,
                            title: 'Update',
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
                            icon: FontAwesomeIcons.gift,
                            title: 'Issue book to user',
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            icon: FontAwesomeIcons.backward,
                            title: 'Return book from user',
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
                            icon: FontAwesomeIcons.book,
                            title: 'Re-issue book',
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            icon: FontAwesomeIcons.coins,
                            title: 'Collect fine',
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
                            icon: FontAwesomeIcons.powerOff,
                            title: 'Log out',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
