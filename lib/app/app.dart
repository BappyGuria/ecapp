import 'package:ecapp/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'app_routs.dart';
import 'app_theme.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.name,
      onGenerateRoute: AppRouts.routes,
      home: SplashScreen(),
    );
  }
}
