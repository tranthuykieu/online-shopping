import 'package:flutter/material.dart';
import 'package:pororo/screens/complete_profile/complete_profile_screen.dart';
import 'package:pororo/screens/forgot_password/forgot_password_screen.dart';
import 'package:pororo/screens/home/home_screen.dart';
import 'package:pororo/screens/login_success/login_success_screen.dart';
import 'package:pororo/screens/otp/otp_screen.dart';
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
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
