import 'package:flutter/material.dart';
import 'package:testing/components/input_container.dart';
import 'package:testing/constants.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({Key key, @required this.hint}) : super(key: key);

  final String hint;
  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock_open,
              color: kPrimaryColor,
            ),
            hintText: hint,
            border: InputBorder.none),
      ),
    );
  }
}
