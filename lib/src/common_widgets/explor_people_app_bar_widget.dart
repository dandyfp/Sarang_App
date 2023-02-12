import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/theme_manager/images_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

class ExplorPeopleAppBarWidget extends StatelessWidget {
  const ExplorPeopleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: SDP.sdp(55.0),
          width: SDP.sdp(55.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(photoUser),
            ),
          ),
        ),
        SizedBox(
            height: SDP.sdp(34.0),
            width: SDP.sdp(143.0),
            child: Image.asset(logo)),
        Icon(
          Icons.notifications_none,
          color: ColorManager.white,
          size: SDP.sdp(s24),
        )
      ],
    );
  }
}
