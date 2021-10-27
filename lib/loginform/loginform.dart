import 'package:flutter/material.dart';

import 'package:testing/loginform/form1.dart';
import 'package:testing/loginform/form2.dart';
import 'package:testing/loginform/form3.dart';
import 'package:testing/loginform/form4.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form Design'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Card(
            child: ListTile(
              title: Text('Form1'),
              leading: Icon(Icons.fingerprint),
              trailing: Icon(
                Icons.arrow_right_sharp,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Form1()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Form2'),
              leading: Icon(Icons.face),
              trailing: Icon(
                Icons.arrow_right_sharp,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Form2()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Form3'),
              leading: Icon(Icons.check),
              trailing: Icon(
                Icons.arrow_right_sharp,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Form3()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Form4'),
              leading: Icon(Icons.check),
              trailing: Icon(
                Icons.arrow_right_sharp,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Form4()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
