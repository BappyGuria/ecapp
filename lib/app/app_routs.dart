import 'package:ecapp/features/home/ui/screens/home_screens.dart';
import 'package:ecapp/features/auth/ui/screens/login_screen.dart';
import 'package:ecapp/features/auth/ui/screens/sign_up_screens.dart';
import 'package:flutter/cupertino.dart';
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
    }if(settings.name == HomeScreens.name){
      screenWidget = HomeScreens();
    }
    return MaterialPageRoute(builder: (context) => screenWidget);
  }
}