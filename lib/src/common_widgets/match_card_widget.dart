import 'package:flutter/material.dart';

import '../theme_manager/color_manager.dart';
import '../theme_manager/dimens_manager.dart';
import '../theme_manager/images_manager.dart';
import '../utils/scalable_dp.dart';
import 'glass_card_widget.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(peopleLove2),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: ColorManager.secondary,
              width: SDP.sdp(10.0),
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            borderRadius: BorderRadius.circular(
              SDP.sdp(r70),
            ),
          ),
        ),
        const GlassCardWidget(),
      ],
    );
  }
}
