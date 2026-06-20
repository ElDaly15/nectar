import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/featuers/auth/views/widgets/custom_social_media_login_btm.dart';
import 'package:nectar/featuers/auth/views/widgets/row_of_phone_auth.dart';

class MainAuthColumnData extends StatelessWidget {
  const MainAuthColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get your groceries\nwith nectar',
            style: TextStyles.font24SemiBold(context).copyWith(fontSize: 25),
          ),
          const SizedBox(height: 30),
          InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
            },
            child: Column(
              children: [
                RowOfPhoneAuth(),
                const SizedBox(height: 4),
                Divider(thickness: 1, color: Color(0xffE2E2E2)),
              ],
            ),
          ),

          const SizedBox(height: 30),
          Center(
            child: Text(
              'Or connect with social media',
              style: TextStyles.font18SemiBold(
                context,
              ).copyWith(color: AppColors.greyText),
            ),
          ),
          SizedBox(height: 20),

          CustomSocialMediaLoginBtm(
            text: 'Connect with Google',
            image: Assets.imagesGoogle,
            onPressed: () {},
            color: Color(0xff4285F4),
          ),
          const SizedBox(height: 20),
          CustomSocialMediaLoginBtm(
            text: 'Connect with Facebook',
            image: Assets.imagesFacebook,
            onPressed: () {},
            color: Color(0xff3B5998),
          ),
        ],
      ),
    );
  }
}
