import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'arbeitgeber_screen_mobile.dart';
import 'arbeitgeber_screen_tab.dart';
import 'arbeitgeber_screen_web.dart';

class ArbeitgeberScreenAdapter extends StatelessWidget {
  const ArbeitgeberScreenAdapter({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return ArbeitgeberScreenWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return ArbeitgeberScreenTab();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return ArbeitgeberScreenMobile();
        }
        return ArbeitgeberScreenMobile();
      },
    );
  }
}
