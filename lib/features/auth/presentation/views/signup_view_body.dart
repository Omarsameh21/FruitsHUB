import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/utils/widgets/costum_button.dart';
import 'package:ecommerce_app/core/utils/widgets/costum_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CostumTextFormField(
              hint: 'الاسم كامل', keyboardType: TextInputType.name),
          const SizedBox(
            height: 16,
          ),
          const CostumTextFormField(
              hint: 'البريد الالكتروني',
              keyboardType: TextInputType.emailAddress),
          const SizedBox(
            height: 16,
          ),
          CostumTextFormField(
            hint: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: suffixIcon(),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              CustomCheckBox(
                onChecked: (value) {
                  isclicked = value;
                  setState(() {});
                },
                isChecked: isclicked,
              ),
              Flexible(
                child: Text.rich(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                      text: 'من خلال إنشاء حساب ، فإنك توافق على  ',
                      style: Styles.textStyle16SemiBold
                          .copyWith(color: AppColor.kGreyColor),
                      children: [
                        TextSpan(
                            text: 'الشروط والأحكام الخاصة بنا ',
                            style: Styles.textStyle16SemiBold
                                .copyWith(color: AppColor.kLightPrimaryColor)),
                      ]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CostumButton(text: 'إنشاء حساب جديد', onPressed: () {}),
          const SizedBox(
            height: 26,
          ),
          Text.rich(
            TextSpan(
              text: 'تمتلك حساب بالفعل؟  ',
              style: Styles.textStyle19SemiBold
                  .copyWith(color: const Color(0xff949D9E)),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
                    },
                  text: 'تسجيل دخول',
                  style: Styles.textStyle19SemiBold
                      .copyWith(color: AppColor.kPrimaryColor),
                ),
              ],
            ),
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
