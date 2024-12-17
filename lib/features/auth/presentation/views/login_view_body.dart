import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/utils/widgets/costum_button.dart';
import 'package:ecommerce_app/core/utils/widgets/costum_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/signup_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/widgets/or_divider.dart';
import 'package:ecommerce_app/features/splash/presentation/views/widgets/social_text_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const CostumTextFormField(
            hint: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          CostumTextFormField(
            hint: 'كلمة المـرور',
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: suffixIcon(),
          ),
          const SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: BuildTextButton(
              text: 'نسيت كلمة المرور؟',
              style: Styles.textStyle16SemiBold
                  .copyWith(color: AppColor.kLightPrimaryColor),
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          const CostumButton(text: 'تسجيل دخول'),
          const SizedBox(
            height: 33,
          ),
          Text.rich(
            TextSpan(
              text: 'لا تمتلك حساب؟ ',
              style: Styles.textStyle19SemiBold
                  .copyWith(color: const Color(0xff949D9E)),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(
                          context, SignupView.routeName);
                    },
                  text: 'قم بإنشاء حساب',
                  style: Styles.textStyle19SemiBold
                      .copyWith(color: AppColor.kPrimaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          const OrDivider(),
          const SizedBox(
            height: 21,
          ),
          SocialTextButton(
            logo: Assets.imagesGoogle,
            text: 'تسجيل بواسطة جوجل',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          SocialTextButton(
            logo: Assets.imagesApple,
            text: 'تسجيل بواسطة أبل',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          SocialTextButton(
            logo: Assets.imagesFacebook,
            text: 'تسجيل بواسطة فيسبوك',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  IconButton suffixIcon() => IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.remove_red_eye,
        color: Color(0xffC9CECF),
      ));
}


class BuildTextButton extends StatelessWidget {
  const BuildTextButton({
    super.key,
    required this.text,
    required this.style,
  });
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(text, style: style));
  }
}
