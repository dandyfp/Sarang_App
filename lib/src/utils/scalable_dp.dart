import 'package:flutter/cupertino.dart';

class SDP {
  static int? dimen;
  static double? widht;
  static BuildContext? context;

  static void ini(BuildContext c) {
    context = c;
    widht = MediaQuery.of(context!).size.width;
  }

  static double sdp(double dp) {
    return (dp / 393) * widht!;
  }
}
