import 'package:flutter/material.dart';
import 'package:nectar/featuers/auth/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RegisterViewBody(),
    );
  }
}