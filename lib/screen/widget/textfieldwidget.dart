import 'package:flutter/material.dart';
import 'package:loginpage/constans.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final icon;
  final bool obscureText;
  final suffixIcon;
  final controller;
  final validator;
  TextFieldWidget(
      {@required this.labelText,
      @required this.icon,
      this.obscureText = false,
      this.suffixIcon,
      @required this.controller,
       @required this.validator});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: new TextStyle(
          fontSize: 14,
          color: mediumBlue,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: new TextStyle(
            color: mediumBlue,
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: mediumBlue,
            ),
          ),
          prefixIcon: Icon(
            icon,
            size: 16,
            color: mediumBlue,
          ),
          suffixIcon: Icon(
            suffixIcon,
            size: 16,
            color: mediumBlue,
          ),
        ),
      ),
    );
  }
}
