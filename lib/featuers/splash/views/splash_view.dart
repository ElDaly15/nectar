import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/featuers/splash/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorTheme,
      body: const SplashViewBody(),
    );
  }
}