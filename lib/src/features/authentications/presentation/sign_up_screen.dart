import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/custom_button_widget.dart';
import 'package:sarang/src/common_widgets/custom_text_button_widget.dart';
import 'package:sarang/src/common_widgets/custom_textfield_widget.dart';
import 'package:sarang/src/features/authentications/presentation/sign_up_age_job_screen.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/images_manager.dart';
import 'package:sarang/src/theme_manager/styles_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';
import 'package:sarang/src/utils/ui_utils.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
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
                  labelName: 'Complete Name',
                  controller: nameController,
                  hintText: 'Write your name'),
              CustomTextfieldWidget(
                  labelName: 'Email Address',
                  controller: emailController,
                  hintText: 'Write your email address'),
              CustomTextfieldWidget(
                  labelName: 'Password',
                  controller: passwordController,
                  hintText: 'Write your scurity'),
              verticalSpace(SDP.sdp(s16)),
              CustomButtonWidget(
                ontap: () {
                  Navigator.pushNamed(context, SignUpAgeJobScreen.routeName);
                },
                title: 'Get Started',
              ),
              verticalSpace(SDP.sdp(s20)),
              CustomTextButton(
                title: 'Sign in to My account',
                onPressed: () {},
              )
            ],
          ),
        ),
      )),
    );
  }
}
