import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/shared_prefrences_singleton.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/costum_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentPage = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColor.kPrimaryColor,
              color: currentPage == 1
                  ? AppColor.kPrimaryColor
                  : AppColor.kPrimaryColor.withOpacity(0.5)),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          visible: currentPage == 1,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CostumButton(
              text: 'ابدأ الان',
              onPressed: () {
                 SharedPrefrencesSingleton.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
