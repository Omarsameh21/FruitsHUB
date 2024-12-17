import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar costumAppBar(BuildContext context, {required String title}) {
  return AppBar(
    toolbarHeight: 100,
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: Styles.textStyle23Bold.copyWith(color: AppColor.kBlackColor),
    ),
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.kGreyColor,
              width: 1,
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
