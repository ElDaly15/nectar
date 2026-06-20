import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:phone_form_field/phone_form_field.dart';

class MobileAuthColumnData extends StatelessWidget {
  const MobileAuthColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(color: Colors.black),
          Padding(
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
                PhoneFormField(
                  initialValue: PhoneNumber.parse(
                    '+20',
                  ), // or use the controller
                  validator: PhoneValidator.compose([
                    PhoneValidator.required(context),
                    PhoneValidator.validMobile(context),
                  ]),
                  countrySelectorNavigator:
                      const CountrySelectorNavigator.page(),
                  onChanged: (phoneNumber) {},

                  enabled: true,
                  isCountrySelectionEnabled: true,
                  style: TextStyles.font24SemiBold(context),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.greyText)),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.greyText)),
                    focusColor: AppColors.mainColorTheme,
                    
                  ),

                  cursorColor: AppColors.mainColorTheme,
                  isCountryButtonPersistent: true,
                  countryButtonStyle: CountryButtonStyle(
                    showFlag: true,
                    textStyle: TextStyles.font24SemiBold(context),
                    flagSize: 20,
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
