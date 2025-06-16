import 'package:ecapp/features/auth/ui/screens/sign_up_screens.dart';
import 'package:ecapp/features/auth/ui/widgets/app_logo.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String name = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = TextTheme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 44,
                  ),
                  AppLogo(
                    width: 90,
                    height: 90,
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Welcome Back',
                    style: textTheme.titleLarge,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'Please Enter Your Email Address',
                    style: textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (String? value) {
                      String emailValu = value ?? '';
                      if (EmailValidator.validate(emailValu) == false) {
                        return 'Enter a Valid Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                    validator: (String? value) {
                      if ((value?.length ?? 0) <= 6) {
                        return 'Enter a password more than 6 letters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: _onTabLoginButton,
                    child: Text('Login'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTabLoginButton(){
    if(_formKey.currentState!.validate()){
      print('Login Successfully');
      _clearForm();
      Navigator.pushNamed(context, SignUpScreens.name);
    }
  }

  void _clearForm(){
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}
