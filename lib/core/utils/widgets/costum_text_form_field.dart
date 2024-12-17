import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CostumTextFormField extends StatelessWidget {
  const CostumTextFormField(
      {super.key,
      required this.hint,
      required this.keyboardType,
      this.suffixIcon});
  final String hint;
  final TextInputType keyboardType;
  final IconButton? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: const Color(0xffF9FAFA),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          hintText: hint,
          hintStyle:
              Styles.textStyle16Bold.copyWith(color: const Color(0xff949D9E)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        color: Color(0xffE6E9E9),
      ),
    );
  }
}
