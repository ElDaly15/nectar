import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';

class CustomAppBtm extends StatelessWidget {
  const CustomAppBtm({super.key, required this.text, this.onPressed});
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: const Size(double.infinity, 67),
        backgroundColor: AppColors.mainColorTheme,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.font24SemiBold(
          context,
        ).copyWith(color: AppColors.whiteColor),
      ),
    );
  }
}
