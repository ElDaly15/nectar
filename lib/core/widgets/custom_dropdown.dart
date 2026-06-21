// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.title,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final String title;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font18SemiBold(context)
              .copyWith(color: AppColors.greyText),
        ),
        const SizedBox(height: 4),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            
            isExpanded: true,
            dropdownColor: AppColors.whiteColor,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: onChanged,
            items: items
                .map(
                  (item) => DropdownMenuItem<String>(
                    
                    value: item,
                    child: Text(
                      item,
                      style: TextStyles.font18SemiBold(context),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 2),
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.greyText.withOpacity(0.3),
        ),
      ],
    );
  }
}