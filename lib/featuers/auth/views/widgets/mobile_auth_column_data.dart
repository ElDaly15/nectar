import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_styles.dart';

class MobileAuthColumnData extends StatelessWidget {
  const MobileAuthColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(color: Colors.black,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Enter your mobile number',
                      style: TextStyles.font24SemiBold(context).copyWith(fontSize: 25),
                    ),
                    const SizedBox(height: 20),
                    
                  ],
                ),
              ),
            ],
          ),
        );
  }
}