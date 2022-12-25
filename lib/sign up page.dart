import 'package:flutter/material.dart';

import 'profile page.dart';

class HomePage extends StatefulWidget {
  final String userName;
  final String userEmail;
  final String userpassword;
  // final String userpicture;

  const HomePage({
    required this.userName,
    required this.userEmail,
    required this.userpassword,
    // required this.userpicture,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(widget.userName),
              accountEmail: Text(widget.userEmail),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      name: widget.userName,
                      email: widget.userEmail,
                      password: widget.userpassword,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
