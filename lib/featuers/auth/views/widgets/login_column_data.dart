import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/core/widgets/custom_app_btm.dart';
import 'package:nectar/core/widgets/custom_app_text_field.dart';

class LoginColumnData extends StatelessWidget {
  const LoginColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Align(
                      alignment: AlignmentGeometry.center,
                      child: SvgPicture.asset(Assets.imagesCarrots),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'Loging',
                      style: TextStyles.font24SemiBold(
                        context,
                      ).copyWith(fontSize: 25),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Enter your emails and password',
                      style: TextStyles.font18SemiBold(
                        context,
                      ).copyWith(color: AppColors.greyText),
                    ),
                    const SizedBox(height: 30),
                    CustomAppTextField(
                      hintText: 'Enter your email',
                      title: 'Email',
                    ),
                    const SizedBox(height: 20),
                    CustomAppTextField(
                      hintText: 'Enter your password',
                      isPassword: true,
                      obscureText: true,
                      title: 'Password',
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font18SemiBold(
                            context,
                          ).copyWith(color: AppColors.mainColorTheme),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomAppBtm(text: 'Log in', onPressed: () {}),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: TextStyles.font18SemiBold(
                            context,
                          ).copyWith(),
                        ),
                        TextButton(
                          
                          style: TextButton.styleFrom(
                            
                            padding: const EdgeInsets.all(0),
                          ),

                          onPressed: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyles.font18SemiBold(
                              context,
                            ).copyWith(color: AppColors.mainColorTheme),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
