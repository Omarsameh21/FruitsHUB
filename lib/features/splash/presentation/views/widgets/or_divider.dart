
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColor.kGreyColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'أو',
            style: Styles.textStyle18Bold
                .copyWith(color: AppColor.kBlackColor),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: AppColor.kGreyColor,
          ),
        ),
      ],
    );
  }
}