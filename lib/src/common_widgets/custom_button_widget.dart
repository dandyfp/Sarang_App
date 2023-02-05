import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/styles_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.ontap,
  });
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    SDP.ini(context);
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: SDP.sdp(55.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SDP.sdp(r50)),
          gradient: LinearGradient(colors: [
            ColorManager.pink,
            ColorManager.purple,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Text(
            title,
            style: getWhiteSemiBoldTextStyle.copyWith(
              fontSize: SDP.sdp(f16),
            ),
          ),
        ),
      ),
    );
  }
}
