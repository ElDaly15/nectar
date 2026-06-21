import 'package:flutter/material.dart';
import 'package:nectar/featuers/auth/views/widgets/select_location_view_body.dart';

class SelectLocationView extends StatelessWidget {
  const SelectLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body:SelectLocationViewBody() ,
    );
  }
}