import 'package:ass_three/sign%20up%20page.dart';
import 'package:flutter/material.dart';

import 'home page.dart';

class computing extends StatefulWidget {
  const computing({super.key});

  @override
  State<computing> createState() => _computingState();
}

class _computingState extends State<computing> {
  final _formkey = GlobalKey<FormState>(); //define a key to access the form

  String userEmail = '';
  String userName = '';
  String userpassword = '';
  // String userConPassword = '';

  void submit() {
    final bool? isValid = _formkey.currentState?.validate();

    if (isValid == true) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(
            userName: userName,
            userEmail: userEmail,
            userpassword: userpassword,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile App"),
      ),
      body: Container(
        color: Colors.brown,
        alignment: Alignment.center,
        child: Center(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                        /* Emails*/
                        decoration: InputDecoration(labelText: 'Email'),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'fadlan geli emailkaaga';
                          }
                          // if (!RegExp(r'\s+@S+\.\s+').hasMatch(value)) {
                          //   return 'fadlan geli email saxan';
                          // }
                          return null;
                        },
                        onChanged: (value) {
                          userEmail = value;
                        }),
                    TextFormField(
                      /* Username*/
                      decoration: InputDecoration(labelText: 'usernmae'),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'fadlan geli emailkaaga';
                        }
                        if (value.trim().length < 4) {
                          return 'geli wax ka badan 4 xarfood';
                        }
                        return null;
                      },
                      onChanged: (value) => userName = value,
                    ),
                    TextFormField(
                        /* password*/

                        decoration: InputDecoration(
                            labelText: 'pasword',
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 3,
                            ))),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'fadlan geli emailkaaga';
                          }
                          if (!RegExp(
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                              .hasMatch(value)) {
                            return 'fadlan geli email saxan';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          userEmail = value;
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: OutlinedButton(
                          onPressed: submit, child: Text("submit")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
