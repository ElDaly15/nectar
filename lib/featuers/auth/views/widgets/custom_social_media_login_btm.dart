import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';

class CustomSocialMediaLoginBtm extends StatelessWidget {
  const CustomSocialMediaLoginBtm({super.key, required this.text, required this.image, required this.onPressed, required this.color});
  final String text , image;
  final VoidCallback onPressed;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              minimumSize: Size(double.infinity, 67),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: onPressed,
            child: Row(
              children: [
                SvgPicture.asset(image, width: 22, height: 24),
                Spacer(),
                Center(child: Text(text, style: TextStyles.font24SemiBold(context).copyWith(color: AppColors.whiteColor))),
                Spacer(),
              ],
            ),
          );
  }
}