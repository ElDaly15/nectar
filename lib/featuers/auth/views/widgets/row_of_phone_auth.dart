import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_styles.dart';

class RowOfPhoneAuth extends StatelessWidget {
  const RowOfPhoneAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(Assets.imagesEgFlag, width: 33.97, height: 23.7),
                  const SizedBox(width: 10),
                  Text("+20", style: TextStyles.font24SemiBold(context)),
                ],
              );
  }
}