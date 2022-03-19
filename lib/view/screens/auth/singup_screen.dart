import 'package:e_commerce_app_mvc/utils/theam.dart';
import 'package:e_commerce_app_mvc/view/widgets/auth/auth_text_form_field.dart';
import 'package:e_commerce_app_mvc/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
  final TextEditingController namController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: _height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          TextUtils(
                            text: "SIGN",
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: mainColor,
                            underLine: TextDecoration.none,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                            text: "UP",
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            underLine: TextDecoration.none,
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),

                      AuthTextFormField(controller: namController,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
