import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialTextButton extends StatelessWidget {
  const SocialTextButton(
      {super.key,
      required this.logo,
      required this.text,
      required this.onPressed});
  final String logo;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: 58,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.centerRight,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: AppColor.kGreyColor, width: 1)),
            ),
            onPressed: onPressed,
            child: ListTile(
              visualDensity: const VisualDensity(
                vertical: VisualDensity.minimumDensity,
              ),
              leading: SvgPicture.asset(logo),
              title: Text(text,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle19SemiBold),
            ),
          ),
        ),
      ),
    );
  }
}
