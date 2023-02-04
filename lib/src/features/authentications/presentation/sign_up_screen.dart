import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/images_manager.dart';
import 'package:sarang/src/theme_manager/styles_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';
import 'package:sarang/src/utils/ui_utils.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SDP.ini(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SDP.sdp(m24)),
        child: Column(
          children: [
            verticalSpace(SDP.sdp(s50)),
            Center(
              child: Image.asset(
                logo,
                height: SDP.sdp(s34),
                width: SDP.sdp(134.0),
              ),
            ),
            verticalSpace(SDP.sdp(s6)),
            Text(
              'Find your perfect love.',
              style: getWhiteRegulerTextStyle.copyWith(
                fontSize: SDP.sdp(f16),
              ),
            ),
            verticalSpace(SDP.sdp(s30)),
            Image.asset(photoScreen)
          ],
        ),
      )),
    );
  }
}
