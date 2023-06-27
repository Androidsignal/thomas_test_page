import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';
import '../arbeitnehmer_screen/arbeitnehmer_screen_mobile.dart';

class TemporarburoScreenMobile extends StatelessWidget {
  const TemporarburoScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Text(
            'Drei einfache Schritte zur\nVermittlung neuer Mitarbeiter',
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
                  bottom: 1,
                  left: 1,
                  child: Row(
                    children: [
                      Text(
                        '1.',
                        style: GoogleFonts.lato(
                          color: ColorConstants.getInstance().contentTextColor,
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontWeight: FontWeight.normal,
                          // letterSpacing: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 60),
                        child: Text(
                          'Erstellen dein\nUnternehmensprofil',
                          style: GoogleFonts.lato(
                            color: ColorConstants.getInstance().contentTextColor,
                            textStyle: Theme.of(context).textTheme.titleLarge,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ClipPath(
            clipper: WaveClip(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.5,
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
                      padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                      child: SvgPicture.asset(
                        'assets/vectors/temporärbüro2.svg',
                        height: MediaQuery.of(context).size.height / 5.5,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '2.',
                        style: GoogleFonts.lato(
                          color: ColorConstants.getInstance().contentTextColor,
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontWeight: FontWeight.normal,
                          // letterSpacing: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 60),
                        child: Text(
                          'Erhalte Vermittlungs-\nangebot von Arbeitgeber',
                          style: GoogleFonts.lato(
                            color: ColorConstants.getInstance().contentTextColor,
                            textStyle: Theme.of(context).textTheme.titleLarge,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 60,bottom: 30),
                      child: Text(
                        'Vermittlung nach\nProvision oder\nStundenlohn',
                        style: GoogleFonts.lato(
                          color: ColorConstants.getInstance().contentTextColor,
                          textStyle: Theme.of(context).textTheme.titleLarge,
                          fontWeight: FontWeight.normal,
                          // letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: SvgPicture.asset(
                    'assets/vectors/temporärbüro3.svg',
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
