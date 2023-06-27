import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class ArbeithnehmerScreenMobile extends StatelessWidget {
  const ArbeithnehmerScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Text(
            'Drei einfache Schritte\nzu deinem neuen Job',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: ColorConstants.getInstance().textColor,
              textStyle: Theme.of(context).textTheme.headlineSmall,
              fontWeight: FontWeight.normal,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3.5,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 1,
                  right: 1,
                  child: SvgPicture.asset(
                    'assets/vectors/arbeitnehmer1.svg',
                    height: MediaQuery.of(context).size.height / 5.5,
                  ),
                ),
                Positioned(
                  left: 1,
                  bottom: 1,
                  child: RichText(
                    maxLines: 2,
                    text: TextSpan(
                      text: '1. ',
                      style: GoogleFonts.lato(
                        color: ColorConstants.getInstance().contentTextColor,
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontWeight: FontWeight.normal,
                        // letterSpacing: 1,
                      ),
                      children: [
                        TextSpan(
                          text: 'Erstellen dein Lebenslauf',
                          style: GoogleFonts.lato(
                            color: ColorConstants.getInstance().contentTextColor,
                            textStyle: Theme.of(context).textTheme.titleLarge,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipPath(
            clipper: WaveClip(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.25,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ColorConstants.getInstance().gradientColor2, ColorConstants.getInstance().gradientColor1],
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 40),
                      child: SvgPicture.asset(
                        'assets/vectors/arbeitnehmer2.svg',
                        height: MediaQuery.of(context).size.height / 5.5,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    left: 1,
                    child: RichText(
                      text: TextSpan(
                        text: '2. ',
                        style: GoogleFonts.lato(
                          color: ColorConstants.getInstance().contentTextColor,
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontWeight: FontWeight.normal,
                          // letterSpacing: 1,
                        ),
                        children: [
                          TextSpan(
                            text: 'Erstellen dein Lebenslauf',
                            style: GoogleFonts.lato(
                              color: ColorConstants.getInstance().contentTextColor,
                              textStyle: Theme.of(context).textTheme.titleLarge,
                              fontWeight: FontWeight.normal,
                              // letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              children: [
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: SvgPicture.asset(
                    'assets/vectors/arbeitnehmer3.svg',
                    height: MediaQuery.of(context).size.height / 5.5,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '3.',
                      style: GoogleFonts.lato(
                        color: ColorConstants.getInstance().contentTextColor,
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontWeight: FontWeight.normal,
                        // letterSpacing: 1,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20),
                        child: Text(
                          'Mit nur einem Klick\nbewerben',
                          style: GoogleFonts.lato(
                            color: ColorConstants.getInstance().contentTextColor,
                            textStyle: Theme.of(context).textTheme.titleLarge,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 20;
    final highPoint = size.height - 40;

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
