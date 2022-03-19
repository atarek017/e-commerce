import 'package:e_commerce_app_mvc/utils/theam.dart';
import 'package:e_commerce_app_mvc/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary:Get.isDarkMode? mainColor:pinkClr,
        minimumSize: const Size(350, 50),
      ),
      child: TextUtils(
        text: text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color:  Colors.white,
        underLine: TextDecoration.none,
      ),
    );
  }
}
