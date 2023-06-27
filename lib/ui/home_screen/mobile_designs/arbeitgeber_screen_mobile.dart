import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/color_constants.dart';
import 'arbeitnehmer_screen_mobile.dart';

class ArbeitgeberScreenMobile extends StatelessWidget {
  const ArbeitgeberScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Text(
            'Drei einfache Schritte\nzu deinem neuen Mitarbeiter',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: ColorConstants.getInstance().textColor,
              textStyle: Theme.of(context).textTheme.headlineSmall,
              fontWeight: FontWeight.normal,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3.5,
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          text: 'Erstellen dein Unternehmensprofil',
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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ColorConstants.getInstance().gradientColor2, ColorConstants.getInstance().gradientColor1],
                ),
              ),
              height: MediaQuery.of(context).size.height / 2,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  RichText(
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
                          text: 'Erstellen ein Jobinserat',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SvgPicture.asset(
                      'assets/vectors/arbeitgeber2.svg',
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        'Wähle deinen neuen\nMitarbeiter aus',
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
                const SizedBox(height: 20,),
                SvgPicture.asset(
                  'assets/vectors/arbeitgeber3.svg',
                  height: MediaQuery.of(context).size.height / 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
