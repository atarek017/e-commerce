import 'package:e_commerce_app_mvc/logic/controllers/auth_controller.dart';
import 'package:e_commerce_app_mvc/routes/routes.dart';
import 'package:e_commerce_app_mvc/utils/my_string.dart';
import 'package:e_commerce_app_mvc/utils/theam.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/auth_button.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/auth_text_form_field.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/check_widget.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/under_container.dart';
import 'package:e_commerce_app_mvc/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController namController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: _height / 1.3,
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 40),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextUtils(
                                text: "SIGN",
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Get.isDarkMode ? mainColor : pinkClr,
                                underLine: TextDecoration.none,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              TextUtils(
                                text: "UP",
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Get.isDarkMode
                                    ? Colors.black
                                    : Colors.white,
                                underLine: TextDecoration.none,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),

                          // User Name
                          AuthTextFormField(
                              controller: namController,
                              obscureText: false,
                              validator: (value) {
                                if (value.toString().length <= 2 ||
                                    !RegExp(validationName).hasMatch(value)) {
                                  return "Enter Valid Name";
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? Image.asset("assets/images/user.png")
                                  : Icon(
                                      Icons.person,
                                      color: Colors.pink,
                                      size: 30,
                                    ),
                              suffixIcon: const SizedBox(),
                              hintText: "User Name"),
                          const SizedBox(height: 20),

                          // Email
                          AuthTextFormField(
                              controller: emailController,
                              obscureText: false,
                              validator: (value) {
                                if (!RegExp(validationEmail).hasMatch(value)) {
                                  return "Enter Valid Email";
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? Image.asset("assets/images/email.png")
                                  : Icon(
                                      Icons.email,
                                      color: Colors.pink,
                                      size: 30,
                                    ),
                              suffixIcon: const SizedBox(),
                              hintText: "Email"),
                          const SizedBox(height: 20),

                          // Password
                          GetBuilder<AuthController>(builder: (_) {
                            return AuthTextFormField(
                                controller: passwordController,
                                obscureText: controller.isVisible?false:true,
                                validator: (value) {
                                  if (value.toString().length > 6) {
                                    return "Password should be longer or equal to 6 character ";
                                  } else {
                                    return null;
                                  }
                                },
                                prefixIcon: Get.isDarkMode
                                    ? Image.asset("assets/images/lock.png")
                                    : Icon(
                                        Icons.lock,
                                        color: Colors.pink,
                                        size: 30,
                                      ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.visibility();
                                  },
                                  icon: controller.isVisible
                                      ? Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                        )
                                      : Icon(
                                          Icons.visibility_off,
                                          color: Colors.black,
                                        ),
                                ),
                                hintText: "Password");
                          }),

                          const SizedBox(height: 50),
                          //check Box
                          CheckWidget(),
                          const SizedBox(height: 50),
                          AuthButton(
                            onPressed: () {},
                            text: "SIGN UP",
                          ),
                        ],
                      ),
                    )),
              ),
              UnderContainer(
                text: 'Already have an account?',
                authType: 'Log In',
                onPressed: () {
                  Get.offNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
