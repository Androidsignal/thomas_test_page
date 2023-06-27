import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_page/constants/color_constants.dart';
import 'package:test_page/ui/home_screen/common/second_tab.dart';
import 'package:test_page/ui/home_screen/mobile_designs/home_screen_mobile.dart';
import 'package:test_page/ui/home_screen/common/first_tab.dart';

import '../common/third_tab.dart';

class HomeScreenWeb extends StatefulWidget {
  const HomeScreenWeb({super.key});

  @override
  State<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
  ColorConstants colorConstants = ColorConstants.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: colorConstants.contentTextColor,
            ),
            onPressed: () {},
            child: const Text('Login'),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              ClipPath(
                clipper: BottomWaveClipper(),
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 1.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorConstants.getInstance().gradientColor1,
                        ColorConstants.getInstance().gradientColor2,
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Deine Job\nwebsite',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.lato(
                              color: ColorConstants.getInstance().textColor,
                              textStyle: Theme.of(context).textTheme.displaySmall,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  ColorConstants.getInstance().greenColor,
                                  ColorConstants.getInstance().blueColor,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            child: Text(
                              "Kostenlos Registrieren",
                              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/vectors/undraw_agreement_aajr.svg',
                        // fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height / 2.25,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: ColorConstants.getInstance().whiteColor,
                  border: Border.all(color: ColorConstants.getInstance().borderColor, width: 0.8),
                  borderRadius: BorderRadius.circular(
                    12.0,
                  ),
                ),
                child: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                    color: ColorConstants.getInstance().selectedTabColor,
                  ),
                  labelColor: ColorConstants.getInstance().whiteColor,
                  unselectedLabelColor: ColorConstants.getInstance().greenColor,
                  unselectedLabelStyle: GoogleFonts.lato(
                    color: ColorConstants.getInstance().greenColor,
                    textStyle: Theme.of(context).textTheme.titleSmall,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.84,
                  ),
                  labelStyle: GoogleFonts.lato(
                    color: ColorConstants.getInstance().textColor,
                    textStyle: Theme.of(context).textTheme.titleSmall,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.84,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Arbeitnehmer',
                    ),
                    Tab(
                      text: 'Arbeitgeber',
                    ),
                    Tab(
                      text: 'Temporärbüro',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 3,
                child: TabBarView(
                  children: [
                    FirstTab(),
                    SecondTab(),
                    ThirdTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
