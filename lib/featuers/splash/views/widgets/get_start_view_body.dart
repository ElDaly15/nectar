import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_images.dart';

class GetStartViewBody extends StatelessWidget {
  const GetStartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesBackgroundSplash),
      ],
    );
  }
}