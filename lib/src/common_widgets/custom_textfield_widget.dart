import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/styles_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';
import 'package:sarang/src/utils/ui_utils.dart';

class CustomTextfieldWidget extends StatelessWidget {
  const CustomTextfieldWidget(
      {super.key,
      required this.labelName,
      required this.controller,
      required this.hintText,
      this.isObscure = false});

  final String labelName;
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteRegulerTextStyle.copyWith(
            fontSize: SDP.sdp(f16),
          ),
        ),
        verticalSpace(SDP.sdp(s8)),
        TextField(
          controller: controller,
          obscureText: isObscure,
          style: getWhiteRegulerTextStyle.copyWith(
            fontSize: SDP.sdp(f16),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorManager.secondary,
            hintText: hintText,
            hintStyle:
                getBlack60RegulerTextStyle.copyWith(fontSize: SDP.sdp(f16)),
            contentPadding: EdgeInsets.symmetric(
              vertical: SDP.sdp(15.0),
              horizontal: SDP.sdp(p30),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                SDP.sdp(s50),
              ),
            ),
          ),
        ),
        verticalSpace(SDP.sdp(s14))
      ],
    );
  }
}
