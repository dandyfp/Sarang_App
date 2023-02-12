import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/styles_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: getBlack60RegulerTextStyle.copyWith(
          decoration: TextDecoration.underline,
          fontSize: SDP.sdp(f16),
        ),
      ),
    );
  }
}
