import 'package:e_commerce_app_mvc/routes/routes.dart';
import 'package:e_commerce_app_mvc/utils/theam.dart';
import 'package:e_commerce_app_mvc/view/screens/auth/login_screen.dart';
import 'package:e_commerce_app_mvc/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: TextUtils(
                        text: "Welcome",
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        underLine: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: const [
                        TextUtils(
                          text: "Asroo",
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          underLine: TextDecoration.none,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        TextUtils(
                          text: "Shop",
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          underLine: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 12)),
                      onPressed: () {
                        Get.offNamed(Routes.loginScreen);
                      },
                      child: const TextUtils(
                        text: 'Get Start',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        underLine: TextDecoration.none,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextUtils(
                          text: "Don't have any account?",
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          underLine: TextDecoration.none,
                          color: Colors.white),
                      TextButton(
                        child: const TextUtils(
                            text: "Sing Up",
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            underLine: TextDecoration.underline,
                            color: Colors.white),
                        onPressed: () {
                          Get.offNamed(Routes.signupScreen);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
