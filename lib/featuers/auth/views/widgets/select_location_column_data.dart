import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as g;
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_styles.dart';
import 'package:nectar/core/widgets/custom_app_btm.dart';
import 'package:nectar/core/widgets/custom_app_text_field.dart';
import 'package:nectar/core/widgets/custom_dropdown.dart';
import 'package:nectar/featuers/auth/views/otp_verify_view.dart';
import 'package:nectar/featuers/auth/views/select_location_view.dart';

class SelectLocationColumnData extends StatefulWidget {
  const SelectLocationColumnData({super.key});

  @override
  State<SelectLocationColumnData> createState() =>
      _SelectLocationColumnDataState();
}

String selectedZone = 'Banasree';
String selectedArea = 'Mirpur';
class _SelectLocationColumnDataState extends State<SelectLocationColumnData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackButton(color: Colors.black),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    SvgPicture.asset(Assets.imagesLocation),
                    SizedBox(height: 20),
                    Text(
                      'Select Your Location',
                      style: TextStyles.font24SemiBold(
                        context,
                      ).copyWith(fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Swithch on your location to stay in tune with what’s happening in your area',
                      textAlign: TextAlign.center,
                      style: TextStyles.font22Medium(
                        context,
                      ).copyWith(color: AppColors.greyText),
                    ),
                    const SizedBox(height: 20),
                    CustomDropdown(
                      title: 'Zone',
                      value: selectedZone,
                      items: const ['Banasree', 'Mirpur', 'Dhanmondi'],
                      onChanged: (newValue) {
                        setState(() {
                          selectedZone = newValue!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                     CustomDropdown(
                      title: 'Your Area',
                      value: selectedArea,
                      items: const ['Banasree', 'Mirpur', 'Dhanmondi' , 'Dhaka'],
                      onChanged: (newValue) {
                        setState(() {
                          selectedArea = newValue!;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomAppBtm(text: 'Submit' , onPressed: (){},),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
