import 'package:ecommerce_app/core/utils/widgets/costum_app_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = "LoginView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costumAppBar(context, title: 'تسجيل دخول'),
      body: const LoginViewBody(),
    );
  }
}
