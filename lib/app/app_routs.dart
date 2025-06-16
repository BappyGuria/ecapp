import 'package:ecapp/features/commone/ui/screens/main_bottom_nav_screens.dart';
import 'package:ecapp/features/auth/ui/screens/login_screen.dart';
import 'package:ecapp/features/auth/ui/screens/sign_up_screens.dart';
import 'package:flutter/material.dart';
import '../features/auth/ui/screens/splash_screen.dart';

class AppRouts{
  static Route<dynamic> routes(RouteSettings settings){
    late final Widget screenWidget;
    if (settings.name == SplashScreen.name) {
      screenWidget = SplashScreen();
    }if(settings.name == LoginScreen.name){
      screenWidget = LoginScreen();
    }if(settings.name == SignUpScreens.name){
      screenWidget = SignUpScreens();
    }if(settings.name == MainBottomNavScreens.name){
      screenWidget = MainBottomNavScreens();
    }
    return MaterialPageRoute(builder: (context) => screenWidget);
  }
}