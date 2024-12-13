import 'package:ecommerce_app/features/splash/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});
  static const routeName = "onBoardingView";
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
