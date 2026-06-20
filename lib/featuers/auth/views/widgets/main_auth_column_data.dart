import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/featuers/auth/views/widgets/row_of_phone_auth.dart';

class MainAuthColumnData extends StatelessWidget {
  const MainAuthColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get your groceries\nwith nectar',
                style: TextStyles.font24SemiBold(
                  context,
                ).copyWith(fontSize: 25),
              ),
              const SizedBox(height: 30),
             RowOfPhoneAuth(),
              const SizedBox(height: 4),
              Divider(
                thickness: 1,
                color: Color(0xffE2E2E2),
              ),
            ],
          ),
        );
  }
}