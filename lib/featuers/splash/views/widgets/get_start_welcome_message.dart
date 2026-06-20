import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' as g;
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/core/widgets/custom_app_btm.dart';
import 'package:nectar/featuers/auth/views/main_auth_view.dart';

class GetStartWelcomeMessage extends StatelessWidget {
  const GetStartWelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SvgPicture.asset(Assets.imagesWhiteCarrot),
          const SizedBox(height: 20),
          Text(
            'Welcome\nto our store',
            textAlign: TextAlign.center,
            style: TextStyles.font22Medium(
              context,
              
            ).copyWith(color: AppColors.whiteColor, fontSize: 48),
          ),
       
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Ger your groceries in as fast as one hour',
              textAlign: TextAlign.center,
              style: TextStyles.font24Medium(
                context,
              ).copyWith(color: Color(0xffFCFCFC)),
            ),
          ),
          const SizedBox(height: 20),
          CustomAppBtm(
            onPressed: (){
              g.Get.off(() => const MainAuthView(),
                transition: g.Transition.fade,
                duration: const Duration(milliseconds: 800));
            },
            text: 'Get Started',
          ),
        ],
      ),
    );
  }
}
