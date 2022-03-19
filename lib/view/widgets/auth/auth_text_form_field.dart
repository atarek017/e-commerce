import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final TextEditingController controller;


  const AuthTextFormField({Key? key, required this.controller})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller,
    );
  }
}
