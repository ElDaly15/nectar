import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:phone_form_field/phone_form_field.dart';

class CustomPhoneFormField extends StatelessWidget {
  const CustomPhoneFormField({super.key});

  @override

  Widget build(BuildContext context) {
    return PhoneFormField(
                    initialValue: PhoneNumber.parse('+20'),
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
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.greyText),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.greyText),
                      ),
                      focusColor: AppColors.mainColorTheme,
                    ),
                    cursorColor: AppColors.mainColorTheme,
                    isCountryButtonPersistent: true,
                    countryButtonStyle: CountryButtonStyle(
                      showFlag: true,
                      textStyle: TextStyles.font24SemiBold(context),
                      flagSize: 20,
                    ),
                  );
  }
}