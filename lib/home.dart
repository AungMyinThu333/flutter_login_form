import 'package:flutter/material.dart';

import 'package:testing/face/face_auth.dart';
import 'package:testing/fingerprint/fingerprint.dart';
import 'package:testing/loginform/loginform.dart';
import 'package:testing/signature/signature.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing Flutter'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Card(
            child: ListTile(
              title: Text('Login Form Design'),
              leading: Icon(Icons.info),
              trailing: Icon(
                Icons.arrow_right_sharp,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginForm()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
