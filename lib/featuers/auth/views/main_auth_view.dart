import 'package:flutter/material.dart';
import 'package:nectar/featuers/auth/views/widgets/main_auth_view_body.dart';

class MainAuthView extends StatelessWidget {
  const MainAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: MainAuthViewBody(),
    );
  }
}