import 'package:ecommerce_app/core/utils/widgets/costum_app_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/views/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routeName = "SignupView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costumAppBar(context, title: ' حساب جديد'),
      body: const SignupViewBody(),
    );
  }
}
