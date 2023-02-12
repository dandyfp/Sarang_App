import 'package:flutter/material.dart';
import 'package:sarang/src/features/authentications/presentation/sign_up_age_job_screen.dart';
import 'package:sarang/src/features/authentications/presentation/sign_up_screen.dart';
import 'package:sarang/src/features/authentications/presentation/sign_up_upload_photo_screen.dart';
import 'package:sarang/src/features/likes_you/presentation/explor_people_screen.dart';
import 'package:sarang/src/theme_manager/theme_data.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationThemeData(),
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAgeJobScreen.routeName: (context) => const SignUpAgeJobScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen(),
        ExplorPeopleScreen.routeName: (context) => const ExplorPeopleScreen(),
      },
    );
  }
}
