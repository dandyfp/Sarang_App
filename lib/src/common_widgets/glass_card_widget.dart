import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../theme_manager/dimens_manager.dart';
import '../theme_manager/images_manager.dart';
import '../theme_manager/styles_manager.dart';
import '../utils/scalable_dp.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SDP.sdp(s14),
        horizontal: SDP.sdp(p24),
      ),
      height: SDP.sdp(90.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: SDP.sdp(m30),
        horizontal: SDP.sdp(p24),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          SDP.sdp(r33),
        ),
        image: const DecorationImage(
          image: AssetImage(glassCard),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: getWhiteSemiBoldTextStyle.copyWith(
                  fontSize: SDP.sdp(s20),
                ),
              ),
              Text(
                '20, Traveler',
                style: getWhiteRegulerTextStyle.copyWith(
                  fontSize: SDP.sdp(s14),
                ),
              )
            ],
          ),
          SvgPicture.asset(iconProfile)
        ],
      ),
    );
  }
}
