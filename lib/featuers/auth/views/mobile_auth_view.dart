import 'package:flutter/material.dart';

import 'widgets/mobile_auth_view_body.dart';

class MobileAuthView extends StatelessWidget {
  const MobileAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: MobileAuthViewBody(),
    );
  }
}