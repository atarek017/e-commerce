import 'package:e_commerce_app_mvc/routes/routes.dart';
import 'package:e_commerce_app_mvc/utils/theam.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/auth_button.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/auth_text_form_field.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/check_widget.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/under_container.dart';
import 'package:e_commerce_app_mvc/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController namController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Get.isDarkMode? Colors.white:darkGreyClr,
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode? Colors.white:darkGreyClr,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: _height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Column(
                    children: [
                      Row(
                        children:  [
                          TextUtils(
                            text: "SIGN",
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color:Get.isDarkMode? mainColor : pinkClr,
                            underLine: TextDecoration.none,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                            text: "UP",
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Get.isDarkMode? Colors.black: Colors.white,
                            underLine: TextDecoration.none,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AuthTextFormField(
                          controller: namController,
                          obscureText: false,
                          validator: () {},
                          prefixIcon: Get.isDarkMode? Image.asset("assets/images/user.png"): Icon(Icons.person,color: Colors.pink,size: 30,),
                          suffixIcon: const SizedBox(),
                          hintText: "User Name"),
                      const SizedBox(height: 20),
                      AuthTextFormField(
                          controller: emailController,
                          obscureText: false,
                          validator: () {},
                          prefixIcon: Get.isDarkMode? Image.asset("assets/images/email.png"):Icon(Icons.email,color: Colors.pink,size: 30,),
                          suffixIcon: const SizedBox(),
                          hintText: "Email"),
                      const SizedBox(height: 20),
                      AuthTextFormField(
                          controller: passwordController,
                          obscureText: true,
                          validator: () {},
                          prefixIcon: Get.isDarkMode? Image.asset("assets/images/lock.png"):Icon(Icons.lock,color: Colors.pink,size: 30,),
                          suffixIcon: const SizedBox(),
                          hintText: "Password"),
                      const SizedBox(height: 50),
                      CheckWidget(),
                      const SizedBox(height: 50),
                      AuthButton(
                        onPressed: () {},
                        text: "SIGN UP",
                      ),
                    ],
                  ),
                ),
              ),
              UnderContainer(
                text: 'Already have an account?',
                authType: 'Log In',
                onPressed: () {
                  Get.offNamed(Routes.signupScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
