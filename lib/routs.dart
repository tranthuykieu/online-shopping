import 'package:flutter/material.dart';
import 'package:pororo/screens/forgot_password/forgot_password_screen.dart';
import 'package:pororo/screens/sign_in/sign_in_screen.dart';
import 'package:pororo/screens/sign_up/sign_up_screen.dart';
import 'package:pororo/screens/splash/splash_screen.dart';

// use name route
// all routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
