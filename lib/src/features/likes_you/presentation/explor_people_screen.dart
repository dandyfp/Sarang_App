import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/explor_people_app_bar_widget.dart';
import 'package:sarang/src/common_widgets/match_card_widget.dart';
import 'package:sarang/src/theme_manager/dimens_manager.dart';
import 'package:sarang/src/utils/scalable_dp.dart';
import 'package:sarang/src/utils/ui_utils.dart';

import '../../../common_widgets/explor_people_button_widget.dart';

class ExplorPeopleScreen extends StatelessWidget {
  static const String routeName = '/explor-people-screen';
  const ExplorPeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SDP.sdp(p40),
          horizontal: SDP.sdp(p24),
        ),
        child: Column(
          children: [
            const ExplorPeopleAppBarWidget(),
            verticalSpace(SDP.sdp(s50)),
            Expanded(
              child: Column(
                children: [
                  const Expanded(
                    child: MatchCardWidget(),
                  ),
                  verticalSpace(SDP.sdp(s50)),
                  const ExplorButtonWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
