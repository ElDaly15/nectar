import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';

class CustomAppTextField extends StatelessWidget {
  const CustomAppTextField({super.key, required this.hintText, required this.title, this.maxLength});
  final String hintText , title ;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font18SemiBold(context).copyWith(color: AppColors.greyText),
        ),
        const SizedBox(height: 4),
        TextField(
          cursorColor: AppColors.mainColorTheme,
          maxLength: maxLength,
          keyboardType: TextInputType.number,
          style: TextStyles.font24SemiBold(context).copyWith(),
          decoration: InputDecoration(
            counterText: "",
            hintText: hintText,
          
            hintStyle: TextStyles.font24SemiBold(context).copyWith(),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
              
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
              
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
              
            ),  
          ),
        ),
      ],
    );
  }
}