import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/featuers/auth/views/widgets/main_auth_column_data.dart';

class MainAuthViewBody extends StatelessWidget {
  const MainAuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          Assets.imagesAuthCarrots,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
        ),
       MainAuthColumnData(),
      ],
    );
  }
}
