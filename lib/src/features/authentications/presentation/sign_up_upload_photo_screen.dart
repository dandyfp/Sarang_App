import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/custom_button_widget.dart';
import 'package:sarang/src/common_widgets/custom_text_button_widget.dart';
import 'package:sarang/src/common_widgets/upload_photo_widget.dart';
import 'package:sarang/src/features/likes_you/presentation/explor_people_screen.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

import '../../../theme_manager/images_manager.dart';
import '../../../theme_manager/styles_manager.dart';
import '../../../utils/ui_utils.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo-screen';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenshotsState();
}

class _SignUpUploadPhotoScreenshotsState
    extends State<SignUpUploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SDP.sdp(50.0),
          horizontal: SDP.sdp(p24),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const UploadPhotoWidget(),
              verticalSpace(SDP.sdp(53.0)),
              Text(
                'Name',
                style:
                    getWhiteSemiBoldTextStyle.copyWith(fontSize: SDP.sdp(s22)),
              ),
              Text(
                'Keterangan',
                style:
                    getBlack60RegulerTextStyle.copyWith(fontSize: SDP.sdp(s16)),
              ),
              verticalSpace(SDP.sdp(240.0)),
              CustomButtonWidget(
                title: 'Update My Profile',
                ontap: () {},
              ),
              verticalSpace(SDP.sdp(s20)),
              CustomTextButton(
                title: 'Skip for Now',
                onPressed: () =>
                    Navigator.pushNamed(context, ExplorPeopleScreen.routeName),
              )
            ],
          ),
        ),
      ),
    );
  }
}
