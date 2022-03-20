
import 'package:get/get.dart';

class AuthController extends GetxController{
  bool isVisible=false;
  bool isCheck=false;

  void visibility(){
    isVisible=!isVisible;
    update();
  }

  void checkbox(){
    isCheck=!isCheck;
    update();
  }
}