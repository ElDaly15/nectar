import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/core/widgets/custom_app_text_field.dart';
import 'package:nectar/featuers/auth/views/select_location_view.dart';

class VerifyColumnData extends StatelessWidget {
  const VerifyColumnData({super.key});

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
                      'Enter your 4-digit code',
                      style: TextStyles.font24SemiBold(
                        context,
                      ).copyWith(fontSize: 25),
                    ),
                    const SizedBox(height: 20),
                    CustomAppTextField(
                      hintText: '- - - -',
                      title: 'Code',
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                    ),
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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend code',
                    style: TextStyles.font24SemiBold(
                      context,
                    ).copyWith(color: AppColors.mainColorTheme),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.mainColorTheme,
                      shape: CircleBorder(),
                    ),
                    color: AppColors.whiteColor,
                    onPressed: () {
                      g.Get.to(
                        () => const SelectLocationView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 400),
                      );
                    },
                    padding: const EdgeInsets.all(16),
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
