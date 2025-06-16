import 'package:ecapp/features/auth/ui/screens/splash_screen.dart';
import 'package:ecapp/features/commone/ui/controller/controller_binder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routs.dart';
import 'app_theme.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.name,
      onGenerateRoute: AppRouts.routes,
      home: SplashScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}
