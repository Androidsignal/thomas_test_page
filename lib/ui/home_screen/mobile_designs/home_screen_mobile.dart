import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_page/ui/home_screen/mobile_designs/arbeitgeber_screen_mobile.dart';
import 'package:test_page/ui/home_screen/mobile_designs/arbeitnehmer_screen_mobile.dart';
import 'package:test_page/ui/home_screen/mobile_designs/temporarburo_screen_mobile.dart';

import '../../../constants/color_constants.dart';
import '../widgets/button_widget.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final ScrollController _controller = ScrollController();

  void _scrollDown() {
    _controller.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Text(
              'Login',
              style: GoogleFonts.lato(color: ColorConstants.getInstance().greenColor, textStyle: Theme.of(context).textTheme.titleMedium, fontWeight: FontWeight.w600, letterSpacing: 0.84),
            ),
          ),
          const SizedBox(
            width: 17,
          )
        ],
        // centerTitle: true,
        elevation: 6,
        toolbarHeight: 67,
        backgroundColor: ColorConstants.getInstance().whiteColor,
        shadowColor: Colors.cyan[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
        ),
      ),
      bottomNavigationBar: Card(
        elevation: 6,
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12.0),
          ),
        ),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 4,
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: GradientButton(
            text: 'Kostenlos Registrieren',
            onPressed: _scrollDown,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height / 1.4),
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [ColorConstants.getInstance().gradientColor1, ColorConstants.getInstance().gradientColor2],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Deine Job\nwebsite',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: ColorConstants.getInstance().textColor,
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Flexible(
                      child: SvgPicture.asset(
                        'assets/vectors/undraw_agreement_aajr.svg',
                        // fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height / 2.25,
                        width: double.maxFinite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                controller: _tabController,
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
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.5,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ArbeithnehmerScreenMobile(),
                  ArbeitgeberScreenMobile(),
                  TemporarburoScreenMobile(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
