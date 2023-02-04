import 'package:flutter/cupertino.dart';

// Horizontal spacing
Widget horizontalSpace(double size) => SizedBox(
      width: size,
    );

// Vertical spacing
Widget verticalSpace(double size) => SizedBox(
      height: size,
    );
// Screen Size Utils
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;
double screenWidhtPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
