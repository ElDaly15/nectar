import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/core/widgets/custom_app_btm.dart';
import 'package:nectar/core/widgets/custom_app_text_field.dart';

class RegisterColumnData extends StatelessWidget {
  const RegisterColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
                      'Sign up',
                      style: TextStyles.font24SemiBold(
                        context,
                      ).copyWith(fontSize: 25),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Enter your credentials to continue',
                      style: TextStyles.font18SemiBold(
                        context,
                      ).copyWith(color: AppColors.greyText),
                    ),
                    const SizedBox(height: 30),
                    CustomAppTextField(hintText: 'Enter your name', title: 'Username'),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 15),
                    RichText(text: TextSpan(
                      text: 'By continuing, you agree to our ',
                      style: TextStyles.font18SemiBold(context).copyWith(color: AppColors.greyText),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyles.font18SemiBold(context).copyWith(color: AppColors.mainColorTheme),
                       
                        ),
                        TextSpan(text: ' and ', style: TextStyles.font18SemiBold(context).copyWith(color: AppColors.greyText)),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyles.font18SemiBold(context).copyWith(color: AppColors.mainColorTheme),
                        ),
                      ],
                    )),
                    const SizedBox(height: 30),
                    CustomAppBtm(text: 'Log in', onPressed: () {}),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
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
                            'Login',
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
            ],
          ),
        ),
      ),
    );
  }
}
