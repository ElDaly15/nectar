import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/featuers/auth/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteColor,
      body:LoginViewBody() ,
    );
  }
}