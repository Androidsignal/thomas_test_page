import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'temporarburo_screen_mobile.dart';
import 'temporarburo_screen_tab.dart';
import 'temporarburo_screen_web.dart';

class TemporarburoScreenAdapter extends StatelessWidget {
  const TemporarburoScreenAdapter({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return TemporarburoScreenWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return TemporarburoScreenTab();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return TemporarburoScreenMobile();
        }
        return TemporarburoScreenMobile();
      },
    );
  }
}
