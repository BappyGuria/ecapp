import 'package:ecapp/features/home/ui/screens/home_screens.dart';
import 'package:ecapp/features/auth/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = 'splash_screens';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToLoginScreen();
  }

  /// Move TO Login Screen
  Future<void>_moveToLoginScreen()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, HomeScreens.name);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Spacer(),
              AppLogo(width: 130,),
              Spacer(),
              CircularProgressIndicator(),
              SizedBox(height: 20,),
              Text('Version 1.0.0',style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}


