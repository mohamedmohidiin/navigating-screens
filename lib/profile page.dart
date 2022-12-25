import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String email;
  final String password;

  ProfilePage(
      {required this.name, required this.email, required this.password});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Container(
          height: 350,
          // width: 500,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Name: ${widget.name}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Email: ${widget.email}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Password: ${widget.password}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
