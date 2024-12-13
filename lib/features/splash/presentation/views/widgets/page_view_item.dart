import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/shared_prefrences_singleton.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backggroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisible,
  });
  final String image, backggroundImage, subTitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              
              height: MediaQuery.of(context).size.height * 0.56,
              child: SvgPicture.asset(
                backggroundImage,
                fit: BoxFit.fill,
              ),
            ),
            Visibility(
              visible: isVisible,
              child: InkWell(
                onTap: () {
                  SharedPrefrencesSingleton.setBool(kIsOnBoardingViewSeen, true);
                  Navigator.of(context)
                      .pushReplacementNamed(LoginView.routeName);
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    'تخط',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 250,
                width: 250,
                child: SvgPicture.asset(
                  image,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: Styles.textStyle16Regular,
          ),
        ),
      ],
    );
  }
}
