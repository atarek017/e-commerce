import 'package:e_commerce_app_mvc/view/screens/auth/login_screen.dart';
import 'package:e_commerce_app_mvc/view/screens/auth/singup_screen.dart';
import 'package:e_commerce_app_mvc/view/screens/welcome_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.signupScreen,
      page: () =>  SignupScreen(),
    ),
  ];
}

class Routes {
  static const String welcomeScreen = '/welcomeScreen';
  static const String loginScreen = '/loginScreen';
  static const String signupScreen = '/signupScreen';
}

