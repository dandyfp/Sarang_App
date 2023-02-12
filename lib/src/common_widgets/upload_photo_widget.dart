import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/images_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

class UploadPhotoWidget extends StatefulWidget {
  const UploadPhotoWidget({super.key});

  @override
  State<UploadPhotoWidget> createState() => _UploadPhotoWidgetState();
}

class _UploadPhotoWidgetState extends State<UploadPhotoWidget> {
  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: SDP.sdp(180.0),
          width: SDP.sdp(180.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: ColorManager.secondary,
                  width: SDP.sdp(8.0),
                  strokeAlign: BorderSide.strokeAlignOutside)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(SDP.sdp(100.0)),
            child: Image.asset(
              photoProfile,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: SDP.sdp(-25.0),
          child: SizedBox(
            width: SDP.sdp(s50),
            height: SDP.sdp(s50),
            child: SvgPicture.asset(iconAddColor),
          ),
        )
      ],
    );
  }
}
