import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'arbeitnehmer_screen_mobile.dart';
import 'arbeitnehmer_screen_tab.dart';
import 'arbeitnehmer_screen_web.dart';

class ArbeithnehmerScreenAdapter extends StatelessWidget {
  const ArbeithnehmerScreenAdapter({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return ArbeithnehmerScreenWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return ArbeithnehmerScreenTab();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return ArbeithnehmerScreenMobile();
        }
        return ArbeithnehmerScreenMobile();
      },
    );
  }
}
