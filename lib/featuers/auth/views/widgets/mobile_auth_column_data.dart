import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/featuers/auth/views/otp_verify_view.dart';
import 'package:nectar/featuers/auth/views/widgets/custom_phone_form_field.dart';

class MobileAuthColumnData extends StatelessWidget {
  const MobileAuthColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackButton(color: Colors.black),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Enter your mobile number',
                      style: TextStyles.font24SemiBold(
                        context,
                      ).copyWith(fontSize: 25),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Mobile number',
                      style: TextStyles.font18SemiBold(
                        context,
                      ).copyWith(color: AppColors.greyText),
                    ),
                    const CustomPhoneFormField(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom ,
            ),  
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                
                style: IconButton.styleFrom(
                  
                  backgroundColor: AppColors.mainColorTheme,
                  shape: CircleBorder(
                    
                  ),
                ),
                color: AppColors.whiteColor,
                onPressed: () {
                    FocusScope.of(context).unfocus(); // close keyboard first

                    g.Get.to(() => const OtpVerifyView(),
                transition: g.Transition.fade,
                duration: const Duration(milliseconds: 400));
                },
                padding: const EdgeInsets.all(16),
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}