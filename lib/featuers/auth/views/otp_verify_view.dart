import 'package:flutter/material.dart';
import 'package:nectar/featuers/auth/views/widgets/otp_verify_view_body.dart';

class OtpVerifyView extends StatelessWidget {
  const OtpVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: false,
     body: OtpVerifyViewBody(),
     backgroundColor: Colors.white,
    );
  }
}