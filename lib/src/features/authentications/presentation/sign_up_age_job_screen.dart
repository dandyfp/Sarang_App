import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/custom_button_widget.dart';
import 'package:sarang/src/features/authentications/presentation/sign_up_upload_photo_screen.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/images_manager.dart';
import 'package:sarang/src/theme_manager/styles_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';
import 'package:sarang/src/utils/ui_utils.dart';

import '../../../common_widgets/custom_textfield_widget.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  const SignUpAgeJobScreen({super.key});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();
  @override
  void dispose() {
    jobController.clear();
    ageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SDP.sdp(m24)),
        child: SingleChildScrollView(
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
              Image.asset(photoScreen),
              verticalSpace(SDP.sdp(s50)),
              CustomTextfieldWidget(
                  labelName: 'Occupation',
                  controller: jobController,
                  hintText: 'Write your Occupation'),
              CustomTextfieldWidget(
                  labelName: 'Age',
                  controller: ageController,
                  hintText: 'Write your age'),
              verticalSpace(SDP.sdp(131.0)),
              CustomButtonWidget(
                ontap: () {
                  Navigator.pushNamed(
                      context, SignUpUploadPhotoScreen.routeName);
                },
                title: 'Continue Sign Up',
              ),
            ],
          ),
        ),
      )),
    );
  }
}
