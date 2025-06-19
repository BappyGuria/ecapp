import 'package:ecapp/features/commone/ui/screens/main_bottom_nav_screens.dart';
import 'package:ecapp/features/auth/ui/screens/login_screen.dart';
import 'package:ecapp/features/auth/ui/screens/sign_up_screens.dart';
import 'package:ecapp/features/product/ui/screens/product_details_screen.dart';
import 'package:ecapp/features/product/ui/screens/product_list_screens.dart';
import 'package:ecapp/features/wish_list/ui/screens/wish_list_screen.dart';
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
    }if(settings.name == ProductListScreens.name){
      final String category = settings.arguments.toString();
      screenWidget = ProductListScreens(category: category);
    }if(settings.name == WishListScreens.name){
      screenWidget = WishListScreens();
    }if(settings.name == ProductDetailsScreen.name){
      final  productId = settings.arguments.toString();
      screenWidget = ProductDetailsScreen(productId: productId);
    }
    return MaterialPageRoute(builder: (context) => screenWidget);
  }
}