import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_page/ui/home_screen/web_designs/home_screen_web.dart';

import 'mobile_designs/home_screen_mobile.dart';
import 'tab_designs/home_screen_tab.dart';

class HomeScreenAdapter extends StatefulWidget {
  const HomeScreenAdapter({super.key});

  @override
  State<HomeScreenAdapter> createState() => _HomeScreenAdapterState();
}

class _HomeScreenAdapterState extends State<HomeScreenAdapter> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const HomeScreenWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const HomeScreenTab();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return const HomeScreenMobile();
        }
        return const HomeScreenMobile();
      },
    );
  }
}
