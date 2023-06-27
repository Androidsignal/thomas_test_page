import 'package:flutter/material.dart';
import 'package:test_page/constants/color_constants.dart';

import 'ui/home_screen/home_screen_adapter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.getInstance().whiteColor
      ),
      home: const HomeScreenAdapter(),
    );
  }
}