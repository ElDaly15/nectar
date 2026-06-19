import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/featuers/splash/views/widgets/get_start_welcome_message.dart';

class GetStartViewBody extends StatelessWidget {
  const GetStartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesBackgroundSplash , width: double.infinity, height: double.infinity, fit: BoxFit.cover ,),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.1,
          left: 0,
          right: 0,
          child: GetStartWelcomeMessage(),
        ),
      ],
    );
  }
}