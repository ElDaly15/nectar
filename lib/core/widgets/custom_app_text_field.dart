import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/core/utils/app_styles.dart';

class CustomAppTextField extends StatefulWidget {
  const CustomAppTextField({super.key, required this.hintText, required this.title, this.maxLength , this.hintStyle ,this.isPassword = false , this.obscureText =false ,this.keyboardType = TextInputType.text});
  final String hintText , title ;
  final int? maxLength;
final TextStyle? hintStyle;
final bool isPassword  , obscureText ;
final TextInputType keyboardType;

  @override
  State<CustomAppTextField> createState() => _CustomAppTextFieldState();
}


class _CustomAppTextFieldState extends State<CustomAppTextField> {

  bool obscureTextLocal = false;
  @override
  void initState() {
    obscureTextLocal = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyles.font18SemiBold(context).copyWith(color: AppColors.greyText),
        ),
        const SizedBox(height: 4),
        TextField(
          cursorColor: AppColors.mainColorTheme,
          maxLength: widget.maxLength,
          obscureText: obscureTextLocal,
          
          keyboardType: widget.keyboardType,
          style: TextStyles.font24SemiBold(context).copyWith(),
          decoration: InputDecoration(
            suffixIcon: widget.isPassword ?  IconButton(onPressed: (){
              setState(() {
                obscureTextLocal = !obscureTextLocal;
              });
            }, icon:  Icon( obscureTextLocal ?  Icons.remove_red_eye : Icons.remove_red_eye_outlined,)) : null,
            counterText: "",
            hintText: widget.hintText,
          
            hintStyle: widget.hintStyle ?? TextStyles.font24SemiBold(context).copyWith(color: AppColors.greyText),
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