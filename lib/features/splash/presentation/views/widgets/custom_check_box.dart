import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {
          onChecked(!isChecked);
        },
        child: AnimatedContainer(
          height: 24,
          width: 24,
          duration: const Duration(milliseconds: 80),
          decoration: ShapeDecoration(
            color: isChecked ? AppColor.kPrimaryColor : Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:
                      isChecked ? AppColor.kPrimaryColor : AppColor.kGreyColor,
                ),
                borderRadius: BorderRadius.circular(6)),
          ),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset(
                    Assets.imagesTrueCheck,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
