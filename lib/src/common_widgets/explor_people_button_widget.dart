import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/match_button_widget.dart';
import 'package:sarang/src/theme_manager/images_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

class ExplorButtonWidget extends StatelessWidget {
  const ExplorButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
          onTap: () {},
          iconPath: imageClose,
        ),
        MatchButtonWidget(
          dimension: SDP.sdp(80.0),
          onTap: () {},
          iconPath: imageLove,
        ),
        MatchButtonWidget(
          onTap: () {},
          iconPath: imageStar,
        )
      ],
    );
  }
}
