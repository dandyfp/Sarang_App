import 'package:flutter/material.dart';
import 'package:sarang/src/utils/scalable_dp.dart';

class MatchButtonWidget extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;
  final double dimension;
  const MatchButtonWidget({
    super.key,
    this.dimension = 50.0,
    required this.onTap,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SDP.sdp(dimension),
        width: SDP.sdp(dimension),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(iconPath),
          ),
        ),
      ),
    );
  }
}
