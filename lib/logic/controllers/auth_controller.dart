
import 'package:get/get.dart';

class AuthController extends GetxController{
  bool isVisible=false;

  void visibility(){
    isVisible=!isVisible;
    update();
  }
}